# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: stem plots
# affiliate: https://linkedin-learning.pxf.io/rweekly_stemplot

sample1 <- rnorm(100, mean = 10, sd = 3) # creates a normal distribution (bell curve)

sample1 # difficult to parse this data

plot(sample1) # doesn't clearly indicate anything

stem(sample1) # demonstrates a normal curve

stem(sample1, scale = 2)
stem(sample1, atom = 1e-)
