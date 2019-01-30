# Calculate Standard Deviation
# (The square root of the Mean Squared Variance)
rm(list=ls())

# Input Data
raw_data <- read.table("~/Desktop/input00", fill = TRUE)
input <- as.numeric(raw_data[2,])

mean <- mean(input)
compute.variance.squared <- function(x) {
  (x-mean)^2
}

variance <- sapply(input, compute.variance.squared)
sd <- sqrt(mean(variance))

cat(format(round(sd,1), nsmall=1))
