# Day Zero Calculating Mean, Median, and Mode

# HackerRank's standard input
# The fill option will fill the first row with NAs
input <- read.table("/dev/stdin", fill = TRUE)

# We can calculate the mean and median using
# R's base package
result.mean <- mean(as.numeric(input[2,]))
result.median <- median(as.numeric(input[2,]))

# R's base package does not have a function for 
# calculating Mode
mode <- function(x) {
  unique.values <- unique(x)
  matched <- match(x, unique.values)
  tabulated <- tabulate(matched)
  unique.values[which.max(tabulated)]
}

result.mode <- mode(sort(as.numeric(input[2,])))

# Hackerrank's standard output
cat(result.mean, "\n")
cat(result.median, "\n")
cat(result.mode, "\n")