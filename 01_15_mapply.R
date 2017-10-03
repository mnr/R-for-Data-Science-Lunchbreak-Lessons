# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for mapply

# mapply is similar to apply except it handles multiple arguments in functions
# also-note function and object are reversed in argument order from apply

# to illustrate, first create a simple function that takes two arguments
mvFunction <- function(x,y) {
  return(paste(x,y,sep="+"))
}

mapply(mvFunction,c(1:4),letters[1:4])
mapply(mvFunction,c(1:4),letters[1:5]) # oops - arguments need to be same or multiple length
mapply(mvFunction,c(1:4),letters[1:8])

# an example that shows how to use named arguments
mv3rdFunction <- function(x,y,zorg=42) {
  return(paste(x,y,zorg,sep = "+"))
}

mapply(mv3rdFunction,c(1:4),letters[1:4],zorg=month.abb[1:4])
mapply(mv3rdFunction,c(1:4),letters[1:4])
