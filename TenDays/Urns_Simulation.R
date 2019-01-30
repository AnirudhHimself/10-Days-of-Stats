library('dplyr')

X <- c(rep("red", 4), rep("black", 3))
Y <- c(rep("red", 5), rep("black", 4))
Z <- c(rep("red", 4), rep("black", 4))

iters <- 2000000

Urns <- list()
Urns$X <- X
Urns$Y <- Y
Urns$Z <- Z

result <- list()

result$X <- sample(Urns$X, iters, replace=TRUE)
result$Y <- sample(Urns$Y, iters, replace=TRUE)
result$Z <- sample(Urns$Z, iters, replace=TRUE)

df.result <- as.data.frame(result)

O1 <- nrow(filter(df.result, df.result$X=="red" & df.result$Y=="red" & df.result$Z=="black"))
O2 <- nrow(filter(df.result, df.result$X=="red" & df.result$Y=="black" & df.result$Z=="red"))
O3 <- nrow(filter(df.result, df.result$X=="black"& df.result$Y=="red"& df.result$Z=="red"))

print(O1+O2+O3)
print((O1+O2+O3)/iters)