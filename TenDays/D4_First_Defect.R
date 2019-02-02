# The probability that a machine produces a defective product is 1/3. 
# What is the probability that the 1st defect is found during the 5th inspection?

first.failure.fifth.trial <- dgeom(4, prob=0.33333333)
cat(format(round((first.failure.fifth.trial), 3), nsmall = 3), "\n")

# What is the probability the first failure is in the 
# first five trials
first.failure <- sum(dgeom(0:4, prob=0.3333333333))
cat(format(round((first.failure), 3), nsmall = 3), "\n")

