# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: with...

data("ChickWeight")

# original equation

# tableOne <- within(tableOne, quartile <- as.integer(cut(salesPrice, quantile(salesPrice, probs=0:4/4), include.lowest=TRUE)))
#as.integer(
cut(ChickWeight$weight, quantile(as.integer(ChickWeight$Diet), probs=0:4/4), include.lowest=TRUE) 

# using with()

# using within()
# tableOne <- within(tableOne, quartile <- as.integer(cut(salesPrice, quantile(salesPrice, probs=0:4/4), include.lowest=TRUE)))

# using pipes