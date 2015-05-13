/*
 * Herein lies the logic and algorithms that the robot uses to function.  It 
 * gathers data from the various hardware on the robot and makes decisions on
 * what to do based on that data.  It takes advantage of a multi-threaded
 * environment to operate an internal state machine of sorts.
 *
 * Author:  Aaron Stephens
 *			aaronst@uw.edu
 *
 * Date:  7/23/2014
 */

// Standard Libraries
#include <iostream>
#include <fstream>
#include <thread>
#include <string>
#include <vector>

// Non-Standard Libraries
#include <boost/tokenizer.hpp>
#include <boost/token_iterator.hpp>
#include <boost/statechart/event.hpp>
#include <boost/statechart/state_machine.hpp>
#include <boost/statechart/state.hpp>
#include <boost/statechart/simple_state.hpp>
#include <boost/statechart/transition.hpp>
#include <boost/statechart/history.hpp>
#include <boost/mpl/list.hpp>

// C Libraries
#include <termios.h>
#include <fcntl.h>
#include <unistd.h>

// Self-Made Libraries
#include <coordinate.hpp>

// Namespaces
using namespace std;
namespace sc = boost::statechart;
namespace mpl = boost::mpl;

// FLAGS & VARIABLES -----------------------------------------------------------
bool rightBumper = false;
bool leftBumper = false;
vector<float> ultrasonics {0, 0, 0, 0, 0, 0, 0, 0};
Coordinate currentLocation;
int currentDestination;
int conesLeft = 0;
float heading = 0;
vector<Coordinate> cones;
vector<Coordinate> obstacles;
// =============================================================================

// STEP 0:  STATE MACHINE SET UP -----------------------------------------------

// Events

// Navigate -> Navigate
struct Continue : sc::event<Continue> {};

// Navigate -> Identify
struct InZone : sc::event<InZone> {};

// ??? -> Avoid
struct Obstacle : sc::event<Obstacle> {};

// ??? -> Dodge
struct Bump : sc::event<Bump> {};

// Avoid -> ???
struct Avoided : sc::event<Avoided> {};

// Dodge -> ???
struct Dodged : sc::event<Dodged>{};

// Identify -> Center
struct PositiveID : sc::event<PositiveID> {};

// Identify -> Wiggle
struct NegativeID : sc::event<NegativeID> {};

// Wiggle -> Identify
struct Look : sc::event<Look> {};

// Approach -> Center
struct Approached : sc::event<Approached> {};

// Center -> Approach
struct Centered : sc::event<Centered> {};

// Approach -> Touch
struct Arrival : sc::event<Arrival> {};

// Touch -> Navigate
struct Touched : sc::event<Touched> {};

//Touch -> Stop
struct Fin : sc::event<Fin> {};

// States

// We are declaring all types as structs only to avoid having to
// type public. If you don't mind doing so, you can just as well
// use class.
// We need to forward-declare the initial state because it can
// only be defined at a point where the state machine is
// defined.
struct Navigate;
struct Identify;
struct Wiggle;
struct Avoid;
struct Dodge;
struct Center;
struct Approach;
struct Touch;
struct Stop;

// Boost.Statechart makes heavy use of the curiously recurring
// template pattern. The deriving class must always be passed as
// the first parameter to all base class templates.
//
// The state machine must be informed which state it has to
// enter when the machine is initiated. That's why Navigate is
// passed as the second template parameter.
struct Driver : sc::state_machine<Driver, Navigate> {};

// For each state we need to define which state machine it
// belongs to and where it is located in the statechart. Both is
// specified with Context argument that is passed to
// simple_state<>. Consequently, Driver must be passed as the
// second template parameter to Navigate's base.
struct Navigate : sc::state<Navigate, Driver> {
	// Whenever the state machine enters a state, it creates an
	// object of the corresponding state class. The object is then
	// kept alive as long as the machine remains in the state.
	// Finally, the object is destroyed when the state machine
	// exits the state. Therefore, a state entry action can be
	// defined by adding a constructor and a state exit action can
	// be defined by adding a destructor.

	typedef mpl::list<sc::transition<InZone, Identify>,
						sc::transition<Obstacle, Avoid>,
						sc::transition<Bump, Dodge>,
						sc::transition<Fin, Stop>,
						sc::transition<Continue, Navigate>> reactions;


	Navigate(my_context ctx) : my_base(ctx) {
		cout << "Entering Navigate State" << endl;

		bool check = true;

		if (conesLeft == 0) {
			cout << "There are no more cones left to find!" << endl;

			post_event(Fin());
			check = false;
		} else {
			cout << "There are still cones left to find!" << endl;
		}

		if (check && (rightBumper || leftBumper)) {
			post_event(Bump());
			check = false;
		}

		if (check) {
			for (float distance : ultrasonics) {
				if (distance > 0) {
					post_event(Obstacle());
					check = false;
					break;
				}
			}
		}

		if (!cones.empty()) {
			if (check && currentLocation.equals(cones[currentDestination])) {
				post_event(InZone());
				check = false;
			}
		}

		// Navigate Algorithm

		if (check) {
			post_event(Continue());
		}
	}

	~Navigate() {
		cout << "Exiting Navigate State" << endl;
	}
};

struct Avoid : sc::state<Avoid, Driver> {

	typedef mpl::list<sc::transition<Obstacle, Avoid>,
						sc::transition<Bump, Dodge>,
						sc::transition<Avoided, Navigate>> reactions;

	Avoid(my_context ctx1) : my_base(ctx1) {
		cout << "Entering Avoid State" << endl;

		// Avoid algorithm

		post_event(Avoided());
	}

	~Avoid() {
		cout << "Exiting Avoid State" << endl;
	}
};

struct Dodge : sc::state<Dodge, Driver> {

	typedef mpl::list<sc::transition<Obstacle, Avoid>,
						sc::transition<Bump, Dodge>,
						sc::transition<Dodged, Navigate>> reactions;

	Dodge(my_context ctx) : my_base(ctx) {
		cout << "Entering Dodge State" << endl;

		// Dodge algorithm

		post_event(Dodged());
	}

	~Dodge() {
		cout << "Exiting Dodge State" << endl;
	}
};

struct Identify : sc::state<Identify, Driver> {

	typedef mpl::list<sc::transition<PositiveID, Center>,
						sc::transition<NegativeID, Wiggle>> reactions;

	Identify(my_context ctx) : my_base(ctx) {
		cout << "Entering Identify State" << endl;

		double result;

		// Identify algorithm

		if (result == 1) {
			post_event(PositiveID());
		} else {
			post_event(NegativeID());
		}
	}

	~Identify() {
		cout << "Exiting Identify State" << endl;
	}
};

struct Wiggle : sc::state<Wiggle, Driver> {

	typedef mpl::list<sc::transition<Look, Identify>,
						sc::transition<Obstacle, Avoid>,
						sc::transition<Bump, Dodge>> reactions;

	Wiggle(my_context ctx) : my_base(ctx) {
		cout << "Entering Wiggle State" << endl;

		// Wiggle algorithm

		post_event(Look());
	}

	~Wiggle() {
		cout << "Exiting Wiggle State" << endl;
	}
};

struct Center : sc::state<Center, Driver> {

	typedef sc::transition<Centered, Approach> reactions;

	Center(my_context ctx) : my_base(ctx) {
		cout << "Entering Center State" << endl;

		// Center algorithm

		post_event(Centered());
	}

	~Center() {
		cout << "Exiting Center State" << endl;
	}
};

struct Approach : sc::state<Approach, Driver> {

	typedef mpl::list<sc::transition<Approached, Center>,
						sc::transition<Obstacle, Avoid>,
						sc::transition<Bump, Dodge>,
						sc::transition<Arrival, Touch>> reactions;

	Approach(my_context ctx) : my_base(ctx) {
		cout << "Entering Approach State" << endl;

		// Approach algorithm

		if (ultrasonics[0] > 0 && ultrasonics[0] < 3) {
			post_event(Arrival());
		} else {
			post_event(Approached());
		}
	}

	~Approach() {
		cout << "Exiting Approach State" << endl;
	}
};

struct Touch : sc::state<Touch, Driver> {

	typedef mpl::list<sc::transition<Touched, Dodge>,
						sc::transition<Fin, Stop>,
						sc::transition<Continue, Touch>> reactions;

	Touch(my_context ctx) : my_base(ctx) {
		cout << "Entering Touch State" << endl;

		// Touch algorithm

		if (rightBumper || leftBumper) {
			conesLeft--;

			if (conesLeft == 0) {
				post_event(Fin());
			} else {
				post_event(Touched());
			}
		} else {
			post_event(Continue());
		}
	}

	~Touch() {
		cout << "Exiting Touch State" << endl;

		currentDestination++;
	}
};

struct Stop : sc::simple_state<Stop, Driver> {
	Stop() {
		cout << "Entering Stop State" << endl;

		// Stop algorithm
	}

	~Stop() {
		cout << "Exiting Stop State" << endl;
	}
};
// =============================================================================

void interpret() {

	cout << "Running interpret function." << endl;

	ifstream input;

	input.open("arduino");

	string inputLine;

	getline(input, inputLine);

	vector<std::string> data;

	boost::char_separator<char> delimiter(", ");
	boost::tokenizer<boost::char_separator<char>> tokens(inputLine, delimiter);

	for (const auto& token : tokens) {
		data.push_back(token);
	}

	input.clear();
	input.close();

	if (data[0].compare("1") == 0) {
		rightBumper = true;
	} else {
		rightBumper = false;
	}

	if (data[1].compare("1") == 0) {
		leftBumper = true;
	} else {
		leftBumper = false;
	}

	int i;

	for (i = 0; i < 8; i++) {
		ultrasonics[i] = stof(data[i + 2]);
	}

	currentLocation.setLatitude(stof(data[10]));
	currentLocation.setLongitude(stof(data[11]));

	heading = stof(data[12]);

	if (conesLeft > 0) {
		interpret();
	}
}

int main(int argc, char* argv[]) {
	/*
	 * First, the coordinates of cones and obstacles will be read in.
	 * Then, the robot will navigate to the first cone, avoiding all obstacles.
	 * Once it arrives, the robot uses the camera to search the area.
	 * After the cone is found, the robot approaches and touches the cone.
	 * Rinse and repeat.
	 */

	// STEP 1:  LOAD COORDINATES FORM FILE

	// Display name of input file to console.
	string file = "coordinates";
	cout << "Input File:  " << file << endl;
	 
	// Create and open an ifstream to read from input file.
	ifstream coordinates;

	coordinates.open(file);
	
	string line;

	// Read input file line by line, determining whether each line is an
	// obstacle or a cone.
	while (getline(coordinates, line)) {
		// Display line from input file to console.
		cout << line << endl;

		vector<std::string> arguments;

		boost::char_separator<char> space(" ");
		boost::tokenizer<boost::char_separator<char>> tokens(line, space);

		for (const auto& token : tokens) {
			arguments.push_back(token);
		}

		if (arguments.at(0) == "c") {
			cones.push_back(Coordinate(stof(arguments.at(1)),
										stof(arguments.at(2))));
		} else if (arguments.at(0) == "o") {
			obstacles.push_back(Coordinate(stof(arguments.at(1)),
											stof(arguments.at(2))));
		}
	}

	// Display final list of cones read from input file.
	for (Coordinate c : cones) {
		cout << "Cone:  " << c.getLatitude() << " " << c.getLongitude() << endl;
	}

	// Done reading from input file, close ifstream.
	coordinates.clear();
	coordinates.close();

	if (!cones.empty()) {
		conesLeft = cones.size();
	}
	// =========================================================================

	// STEP 2:  STATE MACHINE SET UP
	// See above...
	// =========================================================================

	// STEP 3:  SERIAL I/O SET UP

	/*const char *device = "/dev/ttyACM0";

	int fd = open(device, O_RDWR | O_NOCTTY | O_NDELAY);

	if (fd < 0) {
		printf("Failed to open port.\n");
	} else {
		printf("Port was opened\n");
	}

	close(fd);*/

	thread flagger(interpret);

	flagger.detach();
	// =========================================================================

	// STEP 4:  STATE MACHINE EXECUTION

	Driver Magellan;
	// The machine is not yet running after construction. We start
	// it by calling initiate(). This triggers the construction of
	// the initial state Navigate
	Magellan.initiate();
	// When we leave main(), Magellan is destructed which leads to
	// the destruction of all currently active states.

	/*Magellan.process_event(Continue());
	Magellan.process_event(Continue());
	Magellan.process_event(InZone());
	Magellan.process_event(PositiveID());
	Magellan.process_event(Centered());
	Magellan.process_event(Obstacle());
	Magellan.process_event(Avoided());*/
	// =========================================================================

	// STEP #:  CLEAN UP, CLEAN UP, EVERYBODY EVERYWHERE

	// =========================================================================
	return 0;
}