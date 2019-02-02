# A manufacturer of metal pistons finds that, 
# on average, 12% of the pistons they manufacture are rejected.
# What is the probability that a batch of  pistons will contain:
# (1) No more than 2 rejects?
# (2) At least 2 rejects?


max.two <- sum(dbinom(0:2, size = 10, prob = 0.12))
min.two <- sum(dbinom(2:10, size = 10, prob = 0.12))


cat(format(round((max.two), 3), nsmall = 3), "\n")
cat(format(round((min.two), 3), nsmall = 3), "\n")