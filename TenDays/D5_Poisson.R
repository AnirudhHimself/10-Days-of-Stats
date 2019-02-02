# A random variable follows Poisson distribution with mean of 2.5.
# Find the probability that the variable is equal to 5.

equals.five <- dpois(5, 2.5)
cat(format(round((equals.five), 3), nsmall = 3), "\n")