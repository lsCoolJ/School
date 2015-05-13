
# Problem 1:
# 

# Problem 2: ============================================
# determine the frequencies and relative frequencies for the observed values of x, which is the number of nonconforming transducers in a batch.

# Creates a vector called data with listed values.

> data <- c(2,1,2,4,0,1,3,2,0,5,3,3,1,3,2,4,7,0,2,3,0,4,2,1,3,1,1,3,4,1,2,3,2,2,8,4,5,1,3,1,5,0,2,3,2,1,0,6,4,2,1,6,0,3,3,3,6,1,2,3)

#  Lists the frequency of each value in the given array

> table(data)

#  Lists the probability of one value happening in an array of data

> table(data) / length(data)

# What proportion of batches in the sample have at most five nonconforming transducers?
# sum the data below a certain value and find the proportion of the sample

> sum(data <= 5) / length(data)


# Problem 3: ============================================
# Verify that the total area under the curve is indeed 1.

> fx <- function(x) {ifelse(x > a & x < b, 1 / (b - a), 0)}
> a = 4
> b = 6

> integrate(fx, a, b)

# In the long run, what proportion of forms will take between 4.5 min and 5.5 min to process?

> integrate(fx, 4.5, 5.5)

# What value separates the slowest 50% of all process times from the fastest 50%? ( the median of the distribution )
# What value separates the fastes 10% of all processing times from the remaining 90%?

# Problem 7: ============================================

# In the long run, what proportion of values selected form the standard normal distribution will satisfy each of the following conditions?

# Be at most 1.78?

> pnorm(1.78)

# Be between 0.21 and 1.21?

> pnorm(1.21) - pnorm(0.21)

# be at least 2.00?

> pnorm(-2.0)

# Problem 8: ============================================

# Determine the following percentiles for the standard normal distribution

# 91st percentile.

> qnorm(0.91)

# 22nd percentile

> qnorm(0.22)

# 99.9th percentile

> qnorm(0.999)

# Problem 9: ============================================

mu = 96
sd = 14

# What proportion of grain size exceed 100?

> pnorm(mu - (100-mu), mu, sd)

# What proportion of grain sizes are between 50 and 75?

> pnorm(75, mu, sd) - pnorm(50, mu, sd)

# What interval (a,b) includes the central 90% of all grain sizes (so that 5% are below a and 5% are above b?)

> a = qnorm(0.05, mu, sd)
> b = qnorm(0.95, mu, sd)

# Problem 10: ============================================

# Construct a histogram of this data based on classes with boundaries 10, 20, 30,... Then calculate log10(x) for each observation, and construct a histogram of the transformed data using class boundaries 1.1, 1.2, 1.3... what is the effect of the transformation?

> IDTdata <- c(28.1, 31.2, 13.7, 46.0, 25.8, 16.8, 34.8, 62.3, 28.0, 17.9, 19.5, 21.1, 31.9, 28.9, 60.1, 23.7, 18.6, 21.4, 26.6, 26.2, 32.0, 43.5, 17.4, 38.8, 30.6, 55.6, 25.5, 52.1, 21.0, 22.3, 15.5, 36.3, 19.1, 38.4, 72.8, 48.9, 21.4, 20.7, 57.3, 40.9)
> hist(IDTdata)

> IDTlogData <- log10(IDTdata)
> hist(IDTlogData)
# The effect is that the plot almost turns bimodal


