# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: transpose a data frame

# convert wide to tall
talldata <- data.frame(deca = 1:10, 
                       alpha = letters[1:10],
                       month = factor(month.abb[1:10]),
                       stringsAsFactors = FALSE
                       )


talldata$month # able to use $ to address column
str(talldata) #int, char and factor

# wide data instead of tall
widedata <- t(talldata)
str(widedata)
# hey - now everything is the same type - in this case, a character
# $ addressing doesn't work
# that's because talldata was coerced to a matrix

# compare these two
talldata #dataframe
as.matrix(talldata) #matrix

# addressing columns
talldata$alpha # this won't work with widedata
talldata[,2] # this works
widedata[2,] # this works

# note that factors are converted to appropriate levels - but as strings
str(talldata$month)
str(widedata[3,])

# how about converting a matrix to a data.frame?
widedataAsDF <- as.data.frame(widedata, stringsAsFactors = FALSE)
widedataAsDF[3,] <- factor(widedataAsDF[3,]) #nope
# dataframes aren't spreadsheets. 
# dataframe columns can have differing types
# dataframe rows are all the same structure

# hint: look at tidyr from the tidyverse
