idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_sortDataframe2columns"
idx_video <- ""
idx_task <- "sorting"
idx_topics <- "order()"
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# Here's a dataframe
myWeights <- data.frame(ChickWeight)

# sort by one column
order_myweights <- myWeights[order(myWeights$weight), ]

# how to sort by two columns?
order_myweights <- myWeights[order(myWeights$weight, myWeights$Time), ]

# and so on...
order_myweights <- myWeights[order(
  myWeights$weight, 
  myWeights$Time,
  myWeights$Chick), ]

# to reverse the order of a column use "-"
order_myweights <- myWeights[order(-myWeights$weight, myWeights$Time), ]
# notice that weight is descending, time is ascending

# this can also be done by column index
order_myweights <- myWeights[order(-myWeights[ , 1], myWeights[ , 2]), ]
