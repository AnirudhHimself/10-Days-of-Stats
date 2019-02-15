# A large elevator can transport a maximum of 9800 pounds. 
# Suppose a load of cargo containing 49 boxes must be 
# transported via the elevator. The box weight of this type 
# of cargo follows a distribution with a mean of 205 pounds 
# and a standard deviation of 15 pounds. 
# Based on this information, what is the probability that 
# all 49 boxes can be safely loaded into the freight elevator 
# and transported?

rm(list=ls())

# We'll assume the central limit theorem holds

max.weight <- 9800
num.boxes <- 49
mean.weight <- 205
std <- 15

clt.mean <- num.boxes * mean.weight
clt.std <- sqrt(num.boxes) * std

prob <- pnorm(max.weight, clt.mean, clt.std, lower.tail = TRUE)

cat(format(round((prob), 4), nsmall = 4), "\n")

