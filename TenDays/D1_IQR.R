# Calculating Inter-Quartile Range

rm(list=ls())

raw_input <- read.table("~/Desktop/input00", fill=TRUE)
input <- unname(raw_input[2:3,])

# Collapse the list
replicate <- unlist(rep(input[1,], input[2,]))
replicate <- sort(replicate)

# Compute IQR using method 1 
# as stipulated on wikipedia

if(length(replicate) %% 2 == 0) {
  Q1.list <- replicate[1:(length(replicate)/2)]
  Q3.list <- replicate[(length(replicate)/2+1):length(replicate)]
  Q1 <- median(Q1.list)
  Q3 <- median(Q3.list)
} else {
  median <- median(replicate)
  index <- floor(length(replicate)/2)
  Q1.list <- replicate[1:index]
  Q3.list <- replicate[(index+2):length(replicate)]
  Q1 <- median(Q1.list)
  Q3 <- median(Q3.list)
}

cat(format(round((Q3-Q1), 1), nsmall = 1))
