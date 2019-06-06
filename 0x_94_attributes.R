# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# attributes
# lists
mylist <- list(alpha = letters[1:5], numbers = 1:5)
attributes(mylist)

# data.frames
attributes(ChickWeight)

# factors
attributes(ChickWeight$Diet)

# dates
mydate <- as.POSIXlt("2001-03-04 12:31:02", tz = "America/Los_Angeles")
attributes(mydate) # returns class and tzone

# matrix
mymatrix <- matrix(1:30, nrow = 3)
attributes(mymatrix)
dimnames(mymatrix) <- list(c("East","West","North"),
                           c(letters[1:10]))

# add comment
comment(mymatrix) <- "Isn't this neat?"
attributes(mymatrix)

# formula
formula(ChickWeight)

# class, comment, dim, dimnames, row.names, names, tsp, levels, formula, outer, labels, units


