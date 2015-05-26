# Sampling Distribution:

# In class, we have seen the mathematical derivation of the mean and variance
# of the sampling distribution of a statistic; the two statistics we have
# discussed have been 1) sample mean and 2) sample proportion. Here you will
# confirm that the equations given in the lecture are correct, 
# by actually performing the thought experiment that went into the 
# mathematical derivations. We will also address other statistics, e.g. median.

# One important thing to keep in mind is this: Technically, the sampling dist 
# of a sample statistic has nothing to do with data. It is a mathematical
# quantity that one can compute, given some distribution for the population.
# That's why the formulas are all written in terms of the E[ ] and V[ ],
# i.e., quantities that can be computed given some distribution, p(x).
# By contrast, everything we do below is based on data - data we take
# from a population. As a result, E[ ] is replaced with the sample mean.
# This is why, the sampling distribution we build, below, is often called
# the *empirical* sampling distribution.  Technically, it's an approximation
# to (or a simulation of) the true sampling distribution. 

# Throughout this Lab, you may find it easier to have notepad open to copy,
# modify, and paste pieces of code.

# 1) Sampling distribution of the sample mean, when population is normal.  

  rm(list=ls(all=TRUE))           # This erases everything in memory.
  set.seed(1)                     # This assures we all get same answer.
  N = 100000                      # Let N be the population size.
  pop= rnorm(N,1,2)               # Take a random sample and treat it as pop.
  pop.mean=mean(pop)              # This is mu, the pop mean.
  pop.sd=sd(pop)                  # This is sigma, the pop std dev.  
  pop.median=median(pop)          # Get the population median, for later.
  c(pop.mean,pop.sd,pop.median)   # Print them for comparison, below.
  hist(pop,breaks=400)            # This shows that pop is pretty normal.

# Now, let's do the thought-experiment underlying the sampling distribution.

  n.trial = 10000                  # Take 10000 samples of
  sample.size = 10                 # size 10 (i.e., small) from the population.
  sample.mean = numeric(n.trial)   # Space for storing the 10000 sample means.

  for (i in 1:n.trial) {
  samp = sample(pop, sample.size, replace=T) # Take a sample (with replacement)
  sample.mean[i]=mean(samp)                  # and compute each sample's mean.
  }

  mean(sample.mean)    # Compare mean of sample means with pop mean, 0.9955118.
  sd(sample.mean)      # Note the difference of sd of sample means with sd of pop.
  pop.sd/sqrt(sample.size) # But compare sd of sample means with pop.sd/root(n) .

  hist(sample.mean,breaks=40) 
  qqnorm(sample.mean)

# Print both of these and turn them in.

# According to the Central Limit Theorem (CLT), the sampling distribution
# of the sample mean (i.e., the above hist) should be normal. Is it?
  
# Repeat the above sample.size = 100.
 
# Notice that even with a small sample size of 10, the empirical sampling
# distribution is pretty normal. But with larger sample size it's very normal!
# 
# So, the CLT seems to hold.
# Also, note that as the sample size increases, the mean of the sample means 
# gets pretty close to the population mean, and the std dev of the sample 
# means gets pretty close to the  pop.sd/root(n) .
# So, the formulas we derived in for E[] and V[] hold.

#############################################################################
#############################################################################

# 2) Sampling distribution of the sample mean, when population is NOT normal.  

  rm(list=ls(all=TRUE))          # This erases everything in memory.
  N = 100000
  set.seed(1)                    # Never mind the details of this paragraph.
  pop=rgamma(N,1,1)              # All it does is to make a population
  pop.mean=mean(pop)             # with a very non-normal shape.
  pop.sd=sd(pop)                          
  pop.median=median(pop)
  c(pop.mean,pop.sd,pop.median)  # Note the parameters of this pop.
  hist(pop,breaks=400)           # Check it out. Very non-normal.

  n.trial = 10000                  # Take 10000 samples of
  sample.size = 10                 # size 10 (i.e., small) from the population.
  sample.mean = numeric(n.trial)   # Space for storing the 10000 sample means.

  for (i in 1:n.trial) {
  samp = sample(pop, sample.size, replace=T) # Take a sample (with replacement)
  sample.mean[i]=mean(samp)                  # and compute each sample's mean.
  }

  mean(sample.mean)    # Compare mean of sample means with pop mean, 0.9955118.
  sd(sample.mean)      # Note the difference of sd of sample means with sd of pop.
  pop.sd/sqrt(sample.size) # But compare sd of sample means with pop.sd/root(n) .

  hist(sample.mean,breaks=40)
  qqnorm(sample.mean) 

# Print both of these and turn them in.

# Again, repeat the above with sample.size = 100.
# Print both histogram and qqnorm plot and turn them in.

# For small samples (10), when the population is not normal, the sampling 
# distribution of the sample mean resists looking normal; but with larger 
# samples (100), it is normal even though the population is not normal!  

###########################################################################
###########################################################################

# 3) Now, for some statistics, like the sample median, there is no simple
# formula for the mean and variance of the sampling distribution (like
# pop.sd/sqrt(n) ). But we can still perform the experiment numerically, just 
# like we did for the sample mean, above. The questions we want to answer are 
# - What are the mean and sd of the sampling distribution of the sample median?
# - What is the sampling distribution of the sample median itself?
# So, we basically repeat everything we did above, but replace mean with median
# in few places. Here it is for the non-normal-population example:

  n.trial = 10000                 # Take 10000 samples of
  sample.size = 10                # size 10 (i.e., small) from the population.
  sample.median = numeric(n.trial) # Space for storing the 10000 sample medians.

  for (i in 1:n.trial) {
  samp = sample(pop, sample.size, replace=T) # Take a sample (with replacement)
  sample.median[i]=median(samp)              # and compute each sample's MEDIAN.
  }

  mean(sample.median)  # Compare MEAN of sample MEDIANS with pop median, 0.6978674.
  sd(sample.median)    # Note the difference of sd of sample means with sd of pop.

# This time (i.e. for the median) we have nothing to compare with the
# std dev of the sample medians, because the formula sigma/root(n) applies
# only to the sample *mean*.  
  
  hist(sample.median,breaks=40)
  qqnorm(sample.median)

# Print these and turn them in.

# Repeat with sample.size = 100.
# Print the graphs and turn them in.

# The important and amazing thing is that the distribution of a bunch
# of sample medians taken from even a non-normal population is still 
# normal, if the samples are relatively large. 

# Remind yourself what the analogous conclusion was about the sample *means*.
# Which one (the mean or the median) is more resistant to showing a normal
# distribution?

# This code may seem entirely pedagogical; however, it turns out you can
# build on it (next lab) to actually construct the empirical sampling
# distribution (and confidence intervals) for ANY statistic and with any 
# population - the idea is called bootstrapping. It is an extremely powerful 
# method for building confidence intervals in situations where many analytic 
# formulas/methods are simply not available.

###########################################################################
############################################################################

# 4) Confidence interval for population mean.
#
# Although you will be computing most of the confidence intervals (CI)
# by hand (using the basic formulas), at times I will ask you to do it 
# by computer. In R there are multiple ways of doing it, and we'll learn 
# more as we go on, but the easiest one is done with t.test(). 
# Nevermind the name (for now)!  Example:

# Here is a sample of size 200 taken from the above non-normal population:

  samp = sample(pop, 200, replace=T)
  samp
  t.test(samp)

  # For now, ignore all the output except for the 95 percent CI:
  # You can be 95% confident that the true mean resides in this interval.
  # Recall the pop.mean (1.001502); did you get lucky this time?!

###########################################################################
###########################################################################
  
# 5) Coverage of a Confidence Interval.
#
# Draw n.trial=100 samples of size sample.size=90 from the normal population,
# above. We want to confirm that the CI covers the population mean the correct 
# percentage of times. That is what a CI is designed to do, after all.
# For each sample, we will construct the 95% CIs; we make a plot that shows all
# 100 CIs (as in class), and we count how many of them cover the population mean.

  rm(list=ls(all=TRUE))           # This erases everything in memory.
  set.seed(1)                     # This assures we all get same answer.
  N = 100000                      # Let N be the population size.
  pop= rnorm(N,1,2)               # Take a random sample and treat it as pop.
  pop.mean=mean(pop)              # This is mu, the pop mean.
  pop.sd=sd(pop)                  # This is sigma, the pop std dev.
  pop.median=median(pop)          # Get the population median, for later.
  c(pop.mean,pop.sd,pop.median)   # Print them for comparison, below.
  hist(pop,breaks=400)            # This shows that pop is pretty normal.

    n.trial = 100
    sample.size = 90
    CI = matrix(nrow=n.trial,ncol=2)      # Space for storing 2 numbers in CI.

    for (i in 1:n.trial) {                # For each sample, compute CI.
    sample.trial = sample(pop,sample.size) 
    CI[i,] = t.test(sample.trial)$conf.int[1:2]       # Keep only CI.
    }

    cnt = 0                             # Count number of CIs that cover mu.
    for (i in 1:n.trial) {
     if (CI[i,1] <= pop.mean && CI[i,2] >= pop.mean)
     cnt = cnt+1
    }
    cnt

# Recall that a 95% CI is *designed to* cover the pop param about 95% of the
# time. So, this is pretty good.

  # If you want to see the coverage, try this:
  
  plot(CI[1,],c(1,1),xlim=c(0,2),ylim=c(0,101),xlab="CI",type="l")
  for (i in 2:n.trial)
  lines(CI[i,],c(i,i))                # Draw CIs (horizontally), and
  abline(v=pop.mean,col="red",lwd=3)  # the population mean (vertically).
 
# Print this and turn it in.

#########################################################################
