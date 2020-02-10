# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: by instead of tapply
# affiliate: https://linkedin-learning.pxf.io/rweekly_by

# by is like...
# tapply
# split, but with function applied to groups

# an illustration of how a dataframe is broken into groups
by(data = ChickWeight, 
   INDICES = ChickWeight$Time, 
   FUN = print)

by(data = ChickWeight$weight, 
   INDICES = ChickWeight$Time, 
   FUN = max)

# split and tapply example -----------------------------------------------------------

# duplicating the above "by" example with split
splitgroups <- split(ChickWeight$weight, ChickWeight$Time)
lapply(splitgroups, max) # then use lapply against the elements of the list

# duplicating the above "by" example with tapply
tapply(ChickWeight$weight, ChickWeight$Time, max)
