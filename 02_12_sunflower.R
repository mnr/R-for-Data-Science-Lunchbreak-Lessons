# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: sunflower plot

sample1 <- c(1:10, 1:10, 1:10)
sample2 <- c(1:10, 1:10, 1:10)

# note that only 10 points are plotted
plot(x = 1:10, y = 1:10) 
plot(x = sample1, y = sample2) 

length(sample1) # ... but there are 30 x/y coordinates

# use xyTable to calculate overlapping points
xyTbl <- xyTable(sample1, sample2)
# then use sunflowerplot to show the overlap at each point
sunflowerplot(xyTbl)

# more realistic example
sample3 <- sample(1:5, 30, replace = TRUE)
xyTbl <- xyTable(sample1, sample3)
sunflowerplot(xyTbl)
