# You have a sample of 100 values. This sample is from a population that
# has a mean 500 and with standard deviation 80. 
# Compute the interval that covers 
# the middle 95% of the distribution of the sample mean.
# Compute A and B such that P(A < x < B) = 0.95.
# Use a z-score of 1.96.

rm(list=ls())

mean.population <- 500
std.population <- 80
sample.size <- 100
z.score <- 1.96

mean.sample <- mean.population
std.sample <- std.population /sqrt(sample.size)

A <- mean.sample - 1.96 * std.sample
B <- mean.sample + 1.96 * std.sample

cat(format(round((A), 2), nsmall = 2), "\n")
cat(format(round((B), 2), nsmall = 2), "\n")