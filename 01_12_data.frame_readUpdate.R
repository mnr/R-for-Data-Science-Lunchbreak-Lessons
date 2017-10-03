# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for data frame read and update

# Main idea: Navigating data.frames

# Need some data to play with
source("chicknames.R") # builds a data.frame with ranked names

# address variables, rows and cells ------------------------------------------
# values of variables (columns)
ChickWeight$weight # contents of a variable (column)
ChickWeight[1]

# values of observations (rows)
ChickWeight[2,] # notice the comma
ChickWeight[2,3] # 2nd row, 3rd column
ChickWeight[1:3,2] # 1st, 2nd, 3rd row - 2nd column

# Create Variables --------------------------------------------------------
ChickWeight$someNumbers <- c(1:nrow(ChickWeight)) # number of rows must be equal

# Delete Variables --------------------------------------------------------
ChickWeight$someNumbers <- NULL

# Change Value of Variables -----------------------------------------------
medianWeight <- median(ChickWeight$weight)
ChickWeight$weight <- ifelse(ChickWeight$weight > medianWeight,"Larger","Smaller")

# You may have heard of attach() as a way of making dataframe references easier. DON'T DO IT!
# instead, use with()
medianTime <- median(ChickWeight$Time)
ChickWeight$Time <- with(ChickWeight, ifelse(Time > medianTime,"Longer","Shorter"))
