rm(list=ls())

raw_input <- read.table("~/Desktop/input", fill=TRUE)

data <- raw_input[2,]
sorted.data <- sort(data)

# HackerRank has a weird definition of quartiles that 
# doesn't include the median in the calculation of the 
# 25% and 75% values so we can't use the built in quantiles function.
median <- median(as.numeric(sorted.data))

lower.half <- sorted.data[sorted.data < median]
upper.half <- sorted.data[sorted.data > median]

Q1 <- median(lower.half)
Q3 <- median(upper.half)


cat(Q1, "\n")
cat(median, "\n")
cat(Q3, "\n")