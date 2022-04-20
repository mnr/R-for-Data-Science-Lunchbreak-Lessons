# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: weighted.mean
# affiliate: linkedin-learning.pxf.io/rweekly_weightedmean

# which fruit basket is better?
# what I like
apples <- 1
peaches <- 2
brusselsprouts <- -1
fruitWeights <- c(apples, peaches, brusselsprouts)

# contents of basket
BobsBasket <- c(apples=10, peaches=5, brusselsprouts = 5)
JanesBasket <- c(apples=5, peaches=10, brusselsprouts = 0)

# just a mean
mean(BobsBasket)
mean(JanesBasket)
# bob vs jane, 6.6 vs 5. Bob's basket is better!
# wait a minute!
weighted.mean(BobsBasket, fruitWeights)
weighted.mean(JanesBasket, fruitWeights)
# bob vs jane, 7.5 vs 12.5. Jane's basket is better!
