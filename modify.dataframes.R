# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Dataframes: order, merge, rbind, and cbind

# Need a dataframe to play with
data("ChickWeight") # a built-in dataset

# data.frames:order -------------------------------------------------------
ChickWeight$weight # produces unsorted list of "weight" values
sort(ChickWeight$weight) # sorts a vector
order(ChickWeight$weight) # What is this? answer: sorted row numbers - not values
ChickWeight[196,] #lists the observation with the smallest weight
ChickWeight[order(ChickWeight$weight),] # comma because [ row - comma - column ]

# data.frames:merge -------------------------------------------------------


# data.frames:rbind -------------------------------------------------------


# data.frames:bind --------------------------------------------------------


