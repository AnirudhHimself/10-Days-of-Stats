# Question Prompt:
# In a certain plant, the time taken to assemble a car is a random variable, X, 
# having a normal distribution with a mean of 20 hours and a standard deviation of 2 hours. 
# What is the probability that a car can be assembled at this plant in:
#  Less than 19.5 hours?
#  Between 20 and 22 hours?


mean.x <- 20
std.x <- 2

less.than <- 19.5
between <- c(20, 22)

less.than <- pnorm(less.than, mean.x, std.x)
lower.bound <- pnorm(between[1], mean.x, std.x)
upper.bound <- pnorm(between[2], mean.x, std.x)
difference <- upper.bound - lower.bound

cat(format(round((less.than), 3), nsmall = 3), "\n")
cat(format(round((difference), 3), nsmall = 3), "\n")

