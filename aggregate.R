# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for aggregate

# main idea: aggregate is R for SQL "group by"

# grab some data to work with
data("ChickWeight")

# basic format
aggregate(ChickWeight$weight,  by=list(chkID = ChickWeight$Chick), FUN=median)

# use ~ notation
# ~ is for modeling. Left of ~ is "y". Right is model. so y ~ model
aggregate(weight ~ Chick, data=ChickWeight, median)

# list() behaves differently than "~". median needs numeric data
aggregate(weight ~ Chick + Diet, data=ChickWeight, median) # this works

# this doesn't. But it should. Factors not being passed correctly.
aggregate(x=ChickWeight, 
          by=list(ChickID = ChickWeight$Chick, Dietary=ChickWeight$Diet), 
          median)

# convert factors to numeric
str(fixedChickWeight)
fixedChickWeight <- ChickWeight
fixedChickWeight$Chick <- as.numeric(levels(ChickWeight$Chick)[ChickWeight$Chick])
fixedChickWeight$Diet <- as.numeric(levels(ChickWeight$Diet)[ChickWeight$Diet])
str(fixedChickWeight)

#now this works
aggregate(x=fixedChickWeight, 
          by=list(ChickID = fixedChickWeight$Chick, Dietary=fixedChickWeight$Diet), 
          median)

# Alternatives to aggregate
browseURL("http://dplyr.tidyverse.org/")
browseURL("https://github.com/mnr/R-Language-Mini-Tutorials/blob/master/SQLdf.R")