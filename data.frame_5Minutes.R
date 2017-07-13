# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for data frame: five minutes of R

# data frame is like a spreadsheet
# Columns are vectors
# Rows (aka: observations) are lists and must contain an equal number of columns

I.am.a.vector <- c(1,2,3,4,5,6)
I.am.also.a.vector <- c("twas","brillig","and","the","slithey","toves")
many.months <- month.abb[1:6]

I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.also.a.vector,many.months)

I.am.a.short.vector <- c(1:5)
I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.a.short.vector) #oops - different # of rows
