library("ggplot2")

rm(list=ls())
input <- read.table("~/Desktop/input", fill=TRUE)

header <- c("X", "Y")
names(input) <- header

ggplot(data = input) +
  geom_point(mapping = aes(x = X, y = Y))

model <- lm(Y ~ X, input)

b <- unname(model$coefficients[1])
m <- unname(model$coefficients[2])

# The 80 comes from the question prompt
result <- m * 80 + b

cat(format(round((result), 3), nsmall = 3), "\n")