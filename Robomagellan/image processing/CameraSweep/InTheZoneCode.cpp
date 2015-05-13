/*
	Programmer: Keenan Fejeran
	Date: 7/30/2014
	
	Summary: Alpha build for the UWT Robomagellan robot, specifically the behaviour inside the GPS coordinate of a goal cone.

*/


//*********************************************************************************************
//******************************** Preprocessor Directives *************************************
//*********************************************************************************************

#include <ctime>
#include <string>
#include <stdio.h>
#include <cstdlib>

//Computer vision libraries:
#include "opencv2/core/core_c.h"
#include "opencv2/highgui/highgui_c.h"
#include "opencv2/imgproc/imgproc_c.h"

#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

using namespace cv;
using namespace std;

//Computer vision algorithm constants:
#define NO_PIXELS_DETECTED 0
#define NO_BLOBS_DETECTED 999
#define WHITE_PIXEL 255
#define SMOOTHING_COEFFICIENT 0.02
#define MINIMUM_CONFIDENCE 0.005 //0.5%

//Camera Constants:
#define MAX_SWEEP_UNITS 52
#define SEC_PER_STEP 0.5  //a measure of how long it takes to rotate the camera
#define ONESTEP_TO_CENTER 26
#define FOV_ONESTEP 7
#define FOV_DEGREES 49
#define DEGREES_PER_ONESTEP 6.849
#define MAX_DOWN 18
#define ONESTEP_TO_LEVEL 6
#define FULL_SWEEP 8 //number of images that indicate you want a full sweep.

//Camera Commands:
#define UP 0
#define DOWN 2
#define LEFT 4
#define RIGHT 6
#define DOWN_AND_LEFT 92

//*********************************************************************************************
//****************************************** Functions *****************************************
//*********************************************************************************************


//Used to allow for the camera to rotate before the next command is called.
//It is suggested to call this command with an extra second added to be sure the previous movement is done.
void sleepTime(double seconds) {
	clock_t temp;
	temp = clock() + seconds * CLOCKS_PER_SEC;
	while(clock() < temp) {};
}

/*
Send commands to the camera via curl calls. The value is a unit of rotation, where the minimum consistent
rotation is 2 units, and every unit is about 6.8 degrees. Providing a zero for the value will cause the camera to
continue that motion until its physical limit stops its rotation.
*/
void camCommand(int command, int value) {
	
	char buff[21];
	std::string call = "";
	
	call += "curl '10.208.244.46:81/index.htm?decoder_control.cgi?loginuse=admin&loginpas=admin&onestep=";
	sprintf(buff, "%d", value);
	call += buff;
	call += "&command=";
	sprintf(buff, "%d", command);
	call += buff;
	call += "'";
	printf("Sending:\n%s\n", call.c_str());
	system(call.c_str());
       
}

/*
void cameraCenter() {

	//level camera vertically
	camCommand(DOWN, MAX_DOWN);
	sleepTime(SEC_PER_STEP * 18 + 1);
	
	camCommand(UP, ONESTEP_TO_LEVEL);
	sleepTime(SEC_PER_STEP * 6 + 1);

	//center camera horizontally

	camCommand(LEFT, MAX_SWEEP_UNITS);
	sleepTime(SEC_PER_STEP * MAX_SWEEP_UNITS + 1);
	
	camCommand(RIGHT, ONESTEP_TO_CENTER);
	sleepTime(SEC_PER_STEP * ONESTEP_TO_CENTER + 1);
	

	//printf("Camera Centered\n");
}
*/

//Moves the camera all the way left and down, then vertically levels the viewing angle.
void initializeCamera() {
	camCommand(DOWN_AND_LEFT, MAX_SWEEP_UNITS);
	sleepTime(SEC_PER_STEP * MAX_DOWN);

	//after enough time is given to rotate downward, switch to just moving left. No need to keep trying to move down.
	camCommand(LEFT, MAX_SWEEP_UNITS - ONESTEP_TO_LEVEL);
	sleepTime(SEC_PER_STEP * (MAX_SWEEP_UNITS - ONESTEP_TO_LEVEL) + 1);
	
	camCommand(UP, ONESTEP_TO_LEVEL);
	sleepTime(SEC_PER_STEP* ONESTEP_TO_LEVEL +1);
}

//captures an image from the camera and saves it to the path shown. Note, path could be changed to a #define macro.
void saveImage() {
	system("wget -q 'http://10.208.244.46:81/snapshot.cgi?user=admin&pwd=admin&streamid=3' -O image.jpg");
}

//return average blob offset from center in the range [-.5,.5], and the proportion of non-zero pixels.
//must provide a 2 element array to store results.
void calcConfidenceAndOffset( IplImage* img , double arr[] ) 
{
	double sum = 0;
	double count = 0;

	for ( int y = 0; y<img->height; y++)
	{
		uchar* ptr = (uchar*) (
			img->imageData + y*img->widthStep
			);
		for (int x = 0; x<img->width; x++)
		{
			//access to each pixel here
			if (ptr[x+1] == WHITE_PIXEL) { 
				sum+= x; //sum up the y column of each white pixel
				count++; //count all pixels that are white.
			}
		}
	}

	//fill the results container array
	
	if (count == 0) {
		arr[0] = NO_PIXELS_DETECTED;
		arr[1] = NO_PIXELS_DETECTED;
	} else {
		arr[0] = count/(img->width * img->height); //confidence, or a relative amount of pixels found.
		arr[1] = ((sum/count) / img->width) - .5; //offset
	}
	
}

/*
Takes a local image and runs a blob detection algorithm on it. The algorithm returns a certainty 
based on how many pixels were determined to be in the given color range. It also returns the 
relative (average) location of color blobs in the frame. 

Note: Changing to require passing in an array to get around weird C++ array passing. Might be wrong. But works?
*/

void analyzeImage(double fillMe[]) {
	
	//create windows for debugging purposes
	cvNamedWindow("input", CV_WINDOW_AUTOSIZE);
	cvNamedWindow("output", CV_WINDOW_AUTOSIZE);

	//load in original image
	printf("Attempting to load image\n");
	//image path should simply be "image.jpg"
	IplImage* img = cvLoadImage("image.jpg"); //This and most CV calls afterwards are referencing C calls, and not C++. Might need to be updated.
	//cv::Mat img = .... is the c++ way
	
	printf("Image loaded, here is its width: %d\n", img -> width);
	
	//imshow("input", img); //c++ version
	cvShowImage("input", img);

	//convert to hsv
	IplImage* hsv = cvCreateImage(cvGetSize(img), 8, 3);
	//printf("First create image call / get size call \n");

	cvCvtColor(img, hsv, CV_BGR2HSV);
	
	//threshold image
	
	//Threshold color values. Appears to need tuning.
	int iLowH = 1; //hue
	int iHighH = 20;

	int iLowS = 100; //saturation
	int iHighS = 255;

	int iLowV = 100; //value or brightness
	int iHighV = 255;
	//move to defines? or set it up to calibrate on site?
	//make these numbers a CSV? that the program reads in during each call? Therefore the 
	//thresholds could be adjusted by modifying that file? perhaps from a phone?
	
	IplImage* thr = cvCreateImage(cvGetSize(hsv), 8, 1);
	cvInRangeS(hsv, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), thr);
	
	IplImage* smth = cvCreateImage(cvGetSize(thr), 8, 1);
	int kernel_size = thr->width * SMOOTHING_COEFFICIENT; //use the width of the image to determine smoothing amount. Wider picture = more smoothing.
	
	if (kernel_size%2 == 0) kernel_size++; //kernel size must be an odd number.
	
	cvSmooth(thr, smth, CV_MEDIAN, kernel_size);
	
	cvShowImage("output", smth);

	//calculate average offset of color blobs
	calcConfidenceAndOffset(smth, fillMe);
	printf("Confidence for this image: %f\nOffset from this image: %f\n", fillMe[0], fillMe[1]);
	
	cvWaitKey(0); //pause execution at each frame to debug.

	//release resources
	destroyAllWindows();	
	cvReleaseImage(&img); //might not work, if error comment it out.
	cvReleaseImage(&hsv); 
	cvReleaseImage(&thr);
	cvReleaseImage(&smth);
	
}


/*
This function returns the direction of the largest ORANGE color blob in degrees within the range [-X, X]. Negative values represent left of center, while positive values are right of center.

This function assumes the camera is centered vertically (but no assumption is made about horizontal position).

The input is the initial rotation to start sweeping from, and the end rotation you want to go to.
*/
double findBlob(int start, int end) {

	int total_rotation = 0; //used to keep track of where the camera is.

	printf("Initial rotation: %d\n",  start);
	if (start > 0) camCommand(RIGHT, start);
	sleepTime(start * SEC_PER_STEP + 1);
	total_rotation += start;
	
	//Begin sweeping loop
	double result[2]; 
	double temp_result[2];
	
	result[0] = 0; //initialize a 2 element double array.
	result[1] = 0;
	
	//int i;
	int result_rotation = 0; //keeps track of the biggest color blob

	//for (i = 0; i < images; i++) {
	while(total_rotation <= end) {
		printf("****** Starting frame analysis @ %d\n", total_rotation);
		
		//take picture
		saveImage();

		analyzeImage(temp_result);
	
		//if the current image analysis reports a higher certainty, replace the final result with the current result.
		if(temp_result[0] > result[0]) {
			result[0] = temp_result[0];
			result[1] = temp_result[1];
			result_rotation = total_rotation;
			
			printf(" @@@@@@@@@@@@@@@ Found a new best image @ %d\n", result_rotation);
		}
		
		total_rotation += FOV_ONESTEP;
		
		if(total_rotation <= end) {
			//rotate one FOV to capture a new semi-overlapping image.
			camCommand(RIGHT, FOV_ONESTEP);
			sleepTime(SEC_PER_STEP * FOV_ONESTEP + 1);
		} else { 
			//throw a command to the camera to reset itself and allow the program to continue without waiting for that rotation.
			camCommand(LEFT, MAX_SWEEP_UNITS);
			//no sleep but THE NEXT CAMERA COMMAND MUST NOT COME WITHIN THE NEXT (SEC_PER_STEP * MAX_SWEEP_UNITS) SECONDS.
			//if this is not obeyed, the camera will think it was reset when it wasnt, causing incorrect results to be reported.
		}

	}
	
	if (result[0] < MINIMUM_CONFIDENCE) {
		return NO_BLOBS_DETECTED;
	}
	
	//combine the result and the result_i to find the overall degree.
	//double final_onestep = (initial_rotation + (result_i * FOV_ONESTEP)
	//				+ result[1] * FOV_ONESTEP);  //result[1] is the raw output of calcOffset() in the range [-.5,.5].
	double final_onestep = result_rotation + result[1] * FOV_ONESTEP;
	printf("rotations from zero: %f\n", final_onestep);
	
	double onestep_from_center = final_onestep - ONESTEP_TO_CENTER; //can be negative.
	printf("rotations from center: %f\n", onestep_from_center);

	return onestep_from_center * (DEGREES_PER_ONESTEP); //convert from onestep to degrees.
}


//*********************************************************************************************
//***************************************** Test Driver ***************************************
//*********************************************************************************************

int main(int argc, char** argv) {

	//Initialize
	initializeCamera();
	
	//Navigate to gps location

	//**************** Enter "In The Zone" *******************
  
	//Motors stop.
  
	printf("Starting Camera Sweep.\n");
	double heading = findBlob(0, MAX_SWEEP_UNITS); 
	
	if (heading == NO_BLOBS_DETECTED) {
		printf("No cones detected.\n");
	} else {	
		printf("The cone is: %f from center.\n", heading);
	}
}