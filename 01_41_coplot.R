# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Conditional Plots

coplot(ChickWeight$weight ~ ChickWeight$Time | ChickWeight$Diet)

coplot(weight ~ Time | Diet, data = ChickWeight)

coplot(weight ~ Time | Diet, data = ChickWeight, columns = 4)

coplot(weight ~ Time | Diet, data = ChickWeight, 
       panel = function(x,y,...) { abline(lm(y ~ x)) })

# further explanations:
# http://geog.uoregon.edu/GeogR/topics/coplots.html

