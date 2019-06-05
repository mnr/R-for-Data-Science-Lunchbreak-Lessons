# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# attributes

mydate <- as.POSIXct("2001-03-04 12:31:02")
attributes(mydate)
# returns class and tzone
attributes(c(mydate)) # c strips attributes - therefore tzone is lost

# class, comment, dim, dimnames, row.names, names, tsp, levels


