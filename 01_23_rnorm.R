# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for rnorm

# main idea: random number generators
# draw three random names for three chickens. Must be unique.

# grab some names
source("makeChickWeight.R") # popular names for chickens

# Random Normal Distribution -----------------------------------------------------
# random number generator using a normal (Bell curve) distribution
rnorm(10) # mean = 0, standard deviation = 1
chicknames[rnorm(3,mean=6,sd=sd(1:6)),]

# Random Uniform Distribution ----------------------------------------------------
# equal chance of values. Straight line instead of bell curve
runif(10,1,100) # 10 values between 1 (min) and 100 (max)
chicknames[runif(3,1,nrow(chicknames)),]

# Random Sample of Known Values -------------------------------------------
sample(1:100,10,replace=TRUE) # sample(x, size, replace = FALSE, prob = NULL)
# x assumes a single digit (instead of a range) is actually 1:x (sometimes)
# replace=false == cannot take a sample larger than the population
sample(chicknames$name,3) # assumes replace=FALSE
