# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: cut to set intervals

numericVector <- runif(100, min = 1, max = 256 )

cut(numericVector, 3)
cut(numericVector, 3, labels = c("low","med","high"))
cut(numericVector, 3, labels = FALSE)

cut(numericVector,breaks = c(1,100,200,256))

