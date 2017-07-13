# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for data frame: five minutes of R

# data frame is like a spreadsheet
# Columns (aka: variables) are vectors
# Rows (aka: observations) are lists and must contain an equal number of columns

I.am.a.vector <- c(1,2,3,4,5,6)
I.am.also.a.vector <- c("twas","brillig","and","the","slithey","toves")
many.months <- month.abb[1:6]

I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.also.a.vector,many.months)

I.am.a.short.vector <- c(1:5)
I.am.a.failure <- data.frame(I.am.a.vector,I.am.a.short.vector) #oops - different # of rows

I.am.a.dataframe[2,3] # col 3 is a factor (used to be a string)

str(I.am.a.dataframe) # structure of the dataframe
nrow(I.am.a.dataframe) # Number of Rows (observations)
ncol(I.am.a.dataframe) # Number of Columns (variables)
head(I.am.a.dataframe) # first rows of dataframe
tail(I.am.a.dataframe) # last rows of dataframe
names(I.am.a.dataframe) # Header names (aka variable names)

# row.names ---------------------------------------------------------------
I.am.a.dataframe <- data.frame(I.am.a.vector,many.months,row.names = I.am.also.a.vector)
I.am.a.dataframe["slithey","many.months"]
row.names(I.am.a.dataframe)

# stringsAsFactors --------------------------------------------------------
# I() is "Inhibit conversion)
str(I.am.a.dataframe)
I.am.a.dataframe <- data.frame(I.am.a.vector,I(many.months),row.names = I.am.also.a.vector)
str(I.am.a.dataframe)
I.am.a.dataframe["slithey","many.months"]


