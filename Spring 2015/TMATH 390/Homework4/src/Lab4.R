# In this lab, we will illustrate the defects of r, and 
# learn how to do regression using R.

# 1) Defects of Correlation:
#
# In class, I argued that r can be thrown off, and hence become misleading,
# in several situations. Let me illustrate those claims:

 set.seed(123)
 x = runif(100,0,1)
 e = rnorm(100,0,0.5)
 y = 1+ 2*x + e
 x1 = rnorm(100,0,50)
 y1 = rnorm(100,0,50)
 x2 = 1000 + rnorm(100,0,50)
 y2 = 1000 + rnorm(100,0,50)

 plot(x,y)
 cor(x,y)                  # Note the correlation of 0.7561632.

 x[101] =  0.2             # Now, one outlier can artificially reduce r.
 y[101] =  8.0
 plot(x,y)
 cor(x,y)                  # to 0.51602.

 x[101] =  2.0             # A different outlier can artificially increase r.
 y[101] =  8.0
 plot(x,y)
 cor(x,y)                  # to 0.8129318.

# Clusters, too, can make r meaningless. Look!

 plot(x1,y1)
 cor(x1,y1)             # No corr between x and y in cluster 1

 plot(x2,y2)
 cor(x2,y2)             # No corr between x and y in cluster 2

 x = c(x1,x2)           # Combine/concatenate the 2 clusters.
 y = c(y1,y2)
 plot(x,y)
 cor(x,y)               # Now, r incorrectly sees a correlation between x and y.

# The moral is this: Use r to measure linear correlation, but always
# LOOK at the data (e.g. with a scatterplot) to make sure things are OK.

###########################################################################

# 2) Regression on fake/simulated data:
#
# In dealing with two continuous variables, we've learned that the 
# first thing
# to do is to look at their scatterplot. The correlation coefficient
# summarizes the strength of the relationship between them, but it does not
# allow us to predict y from x. What does is "regression" or the
# line that fits "through" the scatterplot.
#
# The function lm() in R does regression, i.e., it fits a line thru a
# scatterplot, or a surface thru higher-dimensional data (later).
# Let us just do simple linear regression, i.e. a fit of just one pair 
# of
# variables, x and y.

  rm(list=ls(all=TRUE))
  set.seed(123)
  x = runif(100,0,1)           # x is uniform between 0 and 1.
  e = rnorm(100,0,1)           # error is normal with mean=0, sigma=1.
  y = 10 + 2*x + e             # The real/true line is y = 10 + 2x.

  plot(x,y)                    # Here is the scatterplot,
  cor(x,y)                     # and the correlation between x and y.
  lm.1 = lm(y ~ x)             # lm stands for linear model.
  lm.1           # Note that the estimated coefficients are pretty close
                 # to the true ones (i.e., intercept=10, slope=2)
  abline(lm.1)   # This draws the fit on the scatterplot.

# Print this and turn it in.

# If you want to know what else is contained in lm.1, do this:

  names(lm.1)

###############################################################################

  # Now, the example data from lecture.
 
    x = c(72,70,65,68,70)
    y = c(200,180,120,118,190)

   plot(x,y)
   cor(x,y)
   lm.1 = lm(y~x)
   abline(lm.1)      # Draws the fit

   lm.1              # Gives you intercept and slope.
   summary(lm.1)     # Gives that, and more (for later).
                     # For now, note that it gives you R^2 (also see below).

###############################################################################

# 3) Regression on real (hail) data:
#
# In practice, "divergence" and "rotate" are measured by Doppler radar, 
# while hail size is measured directly, i.e. on the ground.
# So if we can predict hail size from divergence and rotate, then 
# we can predict hail size from Doppler radar. That's useful!
# In regression lingo, size is the response variable, and the others
# are predictors or covariates.

#  Do simple linear regression for predicting size from divergence.
#  Draw the fit on the scatterplot.

   dat = read.table("hail_dat.txt", header=T)
   plot(dat)     # R displays all scatterplots at once.	
   				 # Note, however, "dat" must be a "data frame" for the
   				 # plot command to have this kind of output.
   is.data.frame(dat) # "TRUE" means it is a data frame. 
   					  # If it isn't a data frame, you can "coerce" it to become one.
   dat = as.data.frame(dat)
   
   cor(dat)      # This shows the correlations between ALL the vars
                 # in the hail data, in one sweep!
            
   size=dat[,3]  # Give the 3 columns in dat their names, for use below.
   rotate=dat[,2]
   diverg=dat[,1]





   lm.1 = lm(size ~ diverg)        # Regression.
   plot(diverg,size)     
   abline(lm.1)      # Note that it seems like the line's slope 
                     # should be larger.  The fit is in fact correct. 
                     # If you want to know why it looks wrong, either 
                     # ask me in class, or google "regression effect."

#  Print this and turn it in.

#  Use anova to decompose SST into SS_explained and SSE, and from them
#  compute R_squared, which is also called the coefficient of determination.
#  It's a measure of goodness-of-fit. For now, you may ignore the 
#  adjusted R-squared.

   anova(lm.1)           # Read-off SSExplained = 603829 and SSE=1616909
   summary(lm.1)         # Read-off R-squared = 0.27

# Note that the R-squared from summary() agrees with 1-(SSE/SST):
# 1- (1616909/(1616909+603829)) = 0.2719047

#########################################################################

# 4) Visual assessment of goodness-of-fit:              
#
# Even though we cannot yet identify the best predictive model, 
# for now, let's just say that it is lm.1 . Although R-squared 
# does tell us something about the quality of the fit, there is nothing 
# that can replace a good figure, e.g., the scatterplot of predicted 
# versus actual y:

# This is the way to get the predicted values, i.e., the y values from
# the fitted line. We call this y_hat.

  y_hat = predict(lm.1)      # This is a quick way of getting y_hat.
  y_hat                      # i.e., the y values from the fitted line.
                             # i.e., the predicted values. 
# Alternatively, you can use the predictions stored in lm() itself:
# y_hat = lm.1$fitted.values 

  plot(size,y_hat)            # actula size vs. predicted size.
  abline(0,1,col="red")       # Just a diagonal line.

# If the model were perfect, this scatterplot would be symmetrically
# spread about the red line (i.e., with slope 1, intercept 0).
# But, obviously the model is not perfect.
# This scatterplot (of actual response vs. predicted response) is often
# the best way of visualizing how well the model is doing. For example, we
# see that for smaller hail size (i.e., small x value), the predictions of
# size are all above the diagonal. One says, the model overpredicts the size
# of small hail, and underpredicts the size of large hail. This kind of
# model daignosis can help in coming up with a better model (later).

#############################################################################

# Another visual tool is the residual plot:
# Although you can make the residuals by hand, they are already contained
# in what lm.1 returns. So,

plot(y_hat, lm.1$residuals)   # or plot( lm.1$fitted.values, lm.1$residuals)
abline(h=0)

# Print this and turn it in.

# In a good fit, these residuals (or errors) should not display any
# correlation with the response variable. Don't let the tilted layers
# fool your eye into thinking that there is some correlation. There isn't,
# and you can confirm that by computing the correlation:

cor(y_hat, lm.1$residuals)

##############################################################################

# Lab Exercise:

# Here is some data:
# x : 0, 2, 4, 6
# y : 1, 7, 55, 400

# (a) What is the value of R^2 for a line through this data?
lm.1 = lm(y~x)
summary(lm.1)
R^2 = 0.7079

# (b) Give one reason for why this value of R^2 is not very high (e.g., 0.9).

# Turn both parts in along with some plots I asked for above. 
# For part (a), give me the code you typed to produce R^2 along with the value of R^2.





##############################################################################

# Time permitting
#
# Here is a way of drawing the fit even if it's nonlinear.
# Suppose we pick a relatively simple quadratic model for the Hail data:

  lm.g = lm(size ~ rotate + I(rotate^2) ) 
  lm.g                             # Note there are now three coefficients.
  x = seq( min(rotate), max(rotate), .01)    # Make a fake x .
  y.fit = lm.g$coeff[1] + lm.g$coeff[2] * x + lm.g$coeff[3] * x^2
  plot(rotate,size)
  points(x , y.fit , col="red", type="l")

# Alternatively, a fancier way is this:

 x = matrix(seq(min(rotate),max(rotate),.01),byrow=T) # Make a fake x .
 colnames(x) = "rotate"                               # Necessary for predict().
 plot(rotate,size)
 lines(x, predict(lm.g, newdata=data.frame(x) ) , col=2) 






 ax^2 + by + c

 xquad = seq(16,30,by=0.1)
 yquad = a*x^2 + b * x + c
 plot(x,y)
 lines(xquad,yquad,col="dodgerblue",lwd=3,lty=2)

