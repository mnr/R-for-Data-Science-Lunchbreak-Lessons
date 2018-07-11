# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Histograms

hist(ChickWeight$weight)

hist(ChickWeight$weight, density = 30)

hist(ChickWeight$weight, density = 30, breaks = c(0,100,200,max(ChickWeight$weight)))

hist(ChickWeight$weight, breaks = fivenum(ChickWeight$weight))
