# The following will illustrate some of the concepts we introduced
# in Chapters 2 and 3. 
#
# 1) let's get a feeling of what a Normal qqplot looks like for
# different kinds of distributions. Recall, that if the data comes from a
# Normal distribution, then it's qqplot should look like a straight line,
# at least in the bulk of the plot; the tails usually deviate from a straight
# line, because there are usually few cases there anyway. A qqplot
# is a *visual* method for checking whether your data are normally distributed.
# Also, if linear, then the intercept and slope of the line can be used as
# estimates of the mu and sigma of the normal distribution.

 x = rnorm(500,0,1)  # Sample of size 500 from a normal dist with mu=0, sigma=1.
 hist(x)
 qqnorm(x)           # Pretty straight!

 x = rexp(500,1)  # Sample of size 500 from an exponential dist with lambda=1.
 hist(x)          # Use UP-ARROW
 qqnorm(x)        # Not straight at all.
 qqline(x)
 
# So, as you can see, a normal sample will produce a linear pattern
# in qqnorm(), but an exponential sample will not. Clearly, that's
# because qqnorm() checks the data against a normal distribution.

# But how do we identify if some data comes from some other distribution,
# say, from the exponential distribution? Answer: use analog of qqnorm
# for the exponential distribution. In R, the function qqmath() allows
# for a large number of theoretical distributions.

# Let me just show you that it succeeds in identifying the above exponential
# data as being from an exponential distribution?

  library(lattice)       # This is the library that contains qqmath().
  x = rexp(500,1)
  hist(x)
  qqmath(x, dist = qexp) 

######################################################################
# 2) Scatterplots:

# Let's pick 100 random x values, and corresponding y values that have
# some linear association with x. We'll change the amount of linear association
# by adding different amounts of noise to y. Look:

x=runif(100,-1,1)          # Take 100 points from a unif dist between -1 and 1.
hist(x)                    # you can see that it does look uniform.
e=rnorm(100,0,0.1)         # Make a normal variable, e, with mu=0, sigma=0.1
hist(e)                    # It looks normal.

y1= 2*x                    # Make a perfect relation between x and y.
y2=2*x + e                 # With some noise added to y.
y3=2*x + rnorm(100,0,0.5)  # With more noise.
y4=2*x + rnorm(100,0,1.0)  # With even more noise.  
y5= x^2 + e                # Non-linear relation.

par(mfrow=c(3,2))
plot(x,y1)                 # USE UP-ARROW 
plot(x,y2)
plot(x,y3)
plot(x,y4)                 # Note that too much noise, e, makes it hard to see
                           # the linear relationship between x and y.
plot(x,y5)

# Print this and turn it in.

############################################################################

# 3) Correlation

# To quantify the strength of the association between two continuous variables, 
# Pearson's correlation coefficient (i.e., correlation), can be computed. 

cor(x,y1)            # Check against the scatterplots, to get a feeling for r
cor(x,y2)            # USE UP-ARROW.
cor(x,y3)
cor(x,y4)
cor(x,y5)            # Very small corr even though there is a clear 
                     # nonlinear relationship; r measures *linear* association.

#########################################################################

# 4) Ecological Correlation.

# Problem 3.17c points out the important concept of ecological correlation.
# Here is the problem:

# Nine students currently taking introductory statistics are randomly selected,
# and both the first midterm exam score (x) and the second midterm score (y)
# are determined. Three of the students have the class at 8 A.M., another
# three have it at noon, and the remaining three have a night class.
# The resulting (x, y) pairs are as follows:
#
# 8 A.M.: (70, 60) (72, 83) (94, 85)
# Noon: (80, 72) (60, 74) (55, 58)
# Night: (45, 63) (50, 40) (35, 54)
#
# a) Calculate the sample correlation coefficient for the nine (x, y) pairs.
# 
# b) Let x1_bar be the average score on the first midterm exam for the
# 8 A.M. students and y1_bar be the average score on the second midterm
# for these students. Denote the two averages for the noon students by
# x2_bar and y2_bar, and for the night students by x3_bar and y3_bar.
# Calculate r for these three (x_bar, y_bar) pairs.
#
# c) Construct a scatter plot of the nine (x,y) pairs and another one of
# the three pairs of averages.  Can you see why r in part (a) is smaller
# than r in part (b)? Does this suggest that a correlation coefficient
# based on averages (called an "ecological" correlation) might be misleading?
# Explain.

# This problem illustrates yet another way in which the value of r can be
# "artificially" increased, i.e., by averaging over things before computing r.
# For similar reasons, regression results can be misleading as well.

  dat = read.table("lab3_dat.txt",header=TRUE) 
  # You might have to change the file name depending on which version you downloaded from online.
  dat              # Look at the data, and understand what the vars are.

  x = dat[,1]      # Give the three vars simple names, like x,
  y = dat[,2]      # y,
  z = dat[,3]      # and z. This one is the time of day, encoded as 1, 2, 3.

  par(mfrow=c(1,1))
  plot(x,y)        # Scatterplot, and the
  cor(x,y)         # moderate correlation of 0.733 between the 9 pairs.

# Part b asks to average the values of x and y over the 3 times:

  xbar = numeric(3)  # Space for storing the time-averaged values of x
  ybar = numeric(3)  # and of y.

  xbar[1] =  mean(x[z==1])     # This averages x values only when time=1
  ybar[1] =  mean(y[z==1])     # Etc.

  xbar[2] =  mean(x[z==2])     # USE UP-ARROW.
  ybar[2] =  mean(y[z==2])

  xbar[3] =  mean(x[z==3])
  ybar[3] =  mean(y[z==3])

  xbar
  ybar

  plot(xbar,ybar)          # Scatterplot of the 3 averaged pairs,
  cor(xbar,ybar)           # and their extreme correlation of 0.998 .

# You can see clearly how it is that averaging tends to increase r,
# by reducing the number of points and their scatter about a line.

# Looking at the last scatterplot of the original data, but with the
# three times colored differently, you can see why this magnification
# of r is happening: Averaging the three pairs for each time, replaces
# the three points with a single point located in the "middle" of the three.
# In general, then, averaging tends to reduce the scatter, and hence the
# resulting r (called the ecological correlation):

  plot(x[z==1],y[z==1], xlim=range(x), ylim=range(y)) # Scatterplot for time 1
  points(x[z==2],y[z==2],col=2)                       # time 2 (USE UP-ARROW)
  points(x[z==3],y[z==3],col=3)                       # time 3
  points(xbar,ybar,col=4,cex=2)                       # and the averaged data.

# Print this plot and turn it in.

#####################################################################

# Lab Exercise:

# (a) Read-in the data file SEA_dat.txt.
# Note: the data file has no header.

# (b) The 1st and the 2nd columns represent temperature and wind direction
# in Seattle, respectively.  Make a scatterplot of temperature vs. wind direction
# (i.e.,  temperature on y axis and wind direction on x axis)

# (c) Describe the general relationship between temperature and wind direction,
# when wind direction is between 100 and 360?

# Turn in part (c) in along with the scatterplot made in part (b).

#####################################################################


# Superposition of histograms on a scatterplot:  
# Here's a code that can superpose histograms on scatterplots. It's somewhat 
# involved, and so don't waste time in trying to understand what it does. 
# Just use it on your own problems, and you'll see what needs to be changed.
# Nothing is due for this portion of the lab.

    set.seed(123)
    x = runif(100,0,1)            # Again, the well-behaved data from above.
    y = 10 + 2*x + rnorm(100,0,0.5) 
    xhist = hist(x, breaks=seq(min(x),max(x)+0.1,0.1), plot=FALSE)
    yhist = hist(y, breaks=seq(min(y),max(y)+0.5,0.5), plot=FALSE)
    top = max(c(xhist$counts, yhist$counts))
    xrange = c(min(x),max(x)+0.5 )
    yrange = c(min(y),max(y)+0.5 )
    nf = layout(matrix(c(2,0,1,3),2,2,byrow=TRUE), c(3,1), c(1,3), TRUE)
#   layout.show(nf)

    par(mar=c(3,3,1,1))
    plot(x, y, xlim=xrange, ylim=yrange, xlab="", ylab="")
    par(mar=c(0,3,1,1))
    barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0)
    par(mar=c(3,0,1,1))
    barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0, horiz=TRUE)

#########################################################################

