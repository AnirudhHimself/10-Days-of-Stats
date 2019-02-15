# The number of tickets purchased by each student for 
# the football game follows a distribution that has a mean of 2.4 and 
# a standard deviation of 2.0.

# A few hours before the game starts, 100 eager students line up to 
# purchase last-minute tickets. If there are only 250 tickets left, 
# what is the probability that all 100 students will be able to purchase 
# tickets?

# The answer to this question sounds like it should be 100%. Since
# 100 < 250. But the key is each student can purchase more than 1 ticket
# that way it is entirely possible that the number of tickets can run out.

rm(list=ls())

# We'll assume CLT Holds

students <- 100
tickets <- 250

mean <- 2.4
std <- 2.0

clt.mean <- students * mean
clt.std <- sqrt(students) * std

prob <- pnorm(tickets, clt.mean, clt.std, lower.tail = TRUE)

cat(format(round((prob), 4), nsmall = 4), "\n")