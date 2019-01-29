# Day Zero Challenge for Calculating weighted mean 

# HackerRank's standard input
# The fill option will fill the first row with NAs
input <- suppressWarnings(read.table("~/Desktop/input00.txt", fill = TRUE))

# We only need the 2nd and 3rd rows of this data set.
data <- input[2:3,]

# Total of all the weights
sum.weights <- sum(data[2,])

total.list <- sapply(data, prod)
weighted.total <- sum(total.list)

# HackerRank expects the answer with one decimal place
weighted.mean <- round(weighted.total/sum.weights, digits = 1)

cat(weighted.mean)

