# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: sunflower plot
# affiliate: https://linkedin-learning.pxf.io/rweekly_sunflower

xpos <- c(1,2,3,3,1,2,3,1,2,3,4,5,6) # 13 xy points
ypos <- c(1,1,1,1,1,1,1,1,1,1,1,1,1)

# but only 6 points are plotted
plot(xpos, ypos)

# sunflowerplot will show duplicates and the extent they are duplicated
# use xyTable to calculate overlapping points
xyTbl <- xyTable(xpos, ypos)
# then use sunflowerplot to show the overlap at each point
sunflowerplot(xyTbl)
