# The ratio of boys to girls for babies born in Russia is 1.09 : 1.
# If there is one child born per birth, what perportion of Russian
# families with exactly 6 children will have atleast 3 boys

# P(Boy) = 1.09/2.09 = 0.5215311005

three.or.more <- dbinom(3:6, size=6, prob=0.5215311005)
three.or.more <- sum(three.or.more)

cat(format(round((three.or.more), 3), nsmall = 3))
