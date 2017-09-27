# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for mean, colMean, & rowMean

# main idea: specialty functions vs apply - why?

# need some data to play with
data("UCBAdmissions")
UCBAdmissions
str(UCBAdmissions) # how is this data structured?
ftable(UCBAdmissions) # what does this look like? (numbers are counts of each cell)

I.am.a.matrix <- matrix(1:30) # need some data
dim(I.am.a.matrix) <- c(6,5)
I.am.a.matrix # what does this look like?


# calculating mean with subsetting ----------------------------------------
mean(I.am.a.matrix[3,]) # mean of row 3
mean(I.am.a.matrix[,3]) # mean of column 3

# calculating mean with rowMeans ------------------------------------------
rowMeans(I.am.a.matrix) # means of all rows
colMeans(I.am.a.matrix) # means of all columns
colSums(I.am.a.matrix) # sum of all columns

# calculating mean with apply -------------------------------------------------------
apply(I.am.a.matrix,1,mean) # equivalent of rowMeans(I.am.a.matrix)
apply(I.am.a.matrix,2,mean) # equivalent of colMeans(I.am.a.matrix)

# Why use rowMeans? --------------------------------------------------------
# speed
# clarity of code

