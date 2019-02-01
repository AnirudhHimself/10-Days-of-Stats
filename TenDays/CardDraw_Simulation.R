#We draw 2 cards from a standard 52-card deck without 
#replacing them. What is the probability that both cards are of the same suit?

library(dplyr)

cards <- factor(c("A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"))
suit <- factor(c("Spade", "Diamond", "Club", "Heart"))
deck <- as.tbl(expand.grid(card = cards, suit = suit))



iterations <- c(1, 10, 100, 1000, 10000, 100000)

for(x in iterations) {
  same.suit <- 0
  for(y in 1:x) {
    result <- sample_n(deck, 2)
    if(result$suit[1] == result$suit[2])
      same.suit = same.suit + 1
  }
  print(same.suit/x)
}

# Results
# [1] 0
# [1] 0.1
# [1] 0.28
# [1] 0.228
# [1] 0.2377
# [1] 0.23519


