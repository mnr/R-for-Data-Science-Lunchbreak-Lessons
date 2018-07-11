# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: split vs cut to set intervals

# cut is for numeric vectors
# split is for data frames

data("ChickWeight")

byChick <- split(ChickWeight, ChickWeight$Chick)

byDiet <- split(ChickWeight, ChickWeight$Diet)

Weights <- ChickWeight$weight
split(Weights, 1:4)


# compare cut to split ----------------------------------------------------

numericVector <- runif(100, min = 1, max = 256 )
cut(numericVector, 4)
split(numericVector, 1:4)
