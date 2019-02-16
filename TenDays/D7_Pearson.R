rm(list=ls())

raw_input <- read.table("~/Desktop/input", fill=TRUE)
input <- raw_input[2:3,]
N <- raw_input[1,1]

X <- unname(unlist(input[1,]))
Y <- unname(unlist(input[2,]))

r.value <- cor(X, Y, method="pearson")

# Output formated to 3 decimal places
cat(format(round((r.value), 3), nsmall = 3), "\n")