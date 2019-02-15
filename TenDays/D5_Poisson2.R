Lambda_A <- 0.88
Lambda_B <- 1.55

mean_X <- 160 + 40*(Lambda_A + Lambda_A^2)
mean_Y <- 128 + 40*(Lambda_B + Lambda_B^2)

cat(format(round((mean_X), 3), nsmall = 3), "\n")
cat(format(round((mean_Y), 3), nsmall = 3), "\n")




