# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Dataframes: rbind and cbind

# Main Idea: how to add rows and columns to data.frames (or matrices)

# Need some data to play with
source("makeChickWeight.R") # builds a data.frame with ranked names

# data.frames: rbind -------------------------------------------------------
# row bind. Combine columns by rows
# rbind is like SQL union
# must be equal # of columns
chicks.one.and.two <- rbind(chick.one,chick.two)

# column names must be identical
chick.one.renamed <- chick.one
names(chick.one.renamed) <- c("grams","chronos","subject","food")
chicks.one.and.two <- rbind(chick.one.renamed,chick.two) # error: names don't match

# rbind matches by column name - not column position
chick.one.reordered <- chick.one[,c(3,1,2,4)]
chicks.one.and.two <- rbind(chick.one.reordered,chick.two) # result column order is reordered

# data.frames: cbind --------------------------------------------------------
# column bind. Combine dataframes (or matrices or vectors) by columns
# cbind, unlike merge, does not attempt to match values between columns 
cbind_chicks_names <- cbind(ChickWeight,chicknames) # oops. # of Rows must be equal
cbind_chicks_names <- cbind(ChickWeight[1:50,],chicknames)

