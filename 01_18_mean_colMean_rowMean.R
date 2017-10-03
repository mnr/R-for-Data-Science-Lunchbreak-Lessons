# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for mean, colMean, & rowMean

# main idea: specialty functions vs apply - speed and clarity of code

I.am.a.matrix <- matrix(1:30,nrow = 6) # need some data
I.am.a.matrix # what does this look like?

# calculating mean with apply -------------------------------------------------------
apply(I.am.a.matrix,1,mean) # equivalent of rowMeans(I.am.a.matrix)
apply(I.am.a.matrix,2,mean) # equivalent of colMeans(I.am.a.matrix)

# calculating mean with rowMeans ------------------------------------------
rowMeans(I.am.a.matrix) # means of all rows
colMeans(I.am.a.matrix) # means of all columns

# and other similar functions
colSums(I.am.a.matrix) # sum of all columns


