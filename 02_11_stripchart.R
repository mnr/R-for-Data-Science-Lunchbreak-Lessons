# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: strip chart

sample1 <- rnorm(100, mean = 10, sd = 3) # creates a normal distribution (bell curve)

stripchart(sample1)

# labeled multiple strip charts
sample2 <- c(10:1)
sample3 <- sample(1:30, 10)

stripchart(list("Apples" = sample1, "Bananas" = sample2, "Coconuts" = sample3) )

# using the "~" formula
groupFactor <- factor(rep(c("Red", "Blue", "Yellow", "Red"), 25)) # set up a factor

stripchart(sample1 ~ groupFactor)
stripchart(sample1 ~ groupFactor, group.names = c("R", "B", "Y"))

# other
stripchart(sample1, method = "jitter", jitter = 1)
stripchart(sample1, vertical = TRUE)

