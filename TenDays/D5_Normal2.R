# The final grades for a Physics exam taken by a large group of students have a mean of 70 
# and a standard deviation of 10. If we can approximate the distribution of these grades by 
# a normal distribution, what percentage of the students:

# 1. Scored higher than 80.
# 2. Passed the test by having a score greater than 60. (Horray!)
# 3. Failed the test by having a grade less than 60.    (Aww. :( Shucks) 

rm(list=ls())

mean <- 70
std <- 10

task.1 <- pnorm(80, mean, std, lower.tail = FALSE) * 100
task.2 <- pnorm(60, mean, std, lower.tail = FALSE) * 100
task.3 <- pnorm(60, mean, std) * 100
                                                    

cat(format(round((task.1), 2), nsmall = 2), "\n")
cat(format(round((task.2), 2), nsmall = 2), "\n")
cat(format(round((task.3), 2), nsmall = 2), "\n")
