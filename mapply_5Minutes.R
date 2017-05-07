# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for mapply: five minutes of R

# a simple function that takes two arguments
mvFunction <- function(x,y) {
  return(paste(x,y,SEP=" "))
}

# mapply is similar to apply except it handles multiple arguments in functions
# also-note function and object are reversed in argument order
mapply(mvFunction,c(1:4),letters[1:4])
mapply(mvFunction,c(1:4),letters[1:5])
mapply(mvFunction,c(1:4),letters[1:8])

# use as many arguments as you need. Here's a function with 3 arguments
mv2ndFunction <- function(x,y,z) {
  return(paste(x,y,z,sep = "+"))
}

# ... and an example of how to use that function with mapply
mapply(mv2ndFunction,c(1:4),letters[1:4],month.abb[1:4])

# another example that shows how to use named arguments
mv3rdFunction <- function(x,y,zorg=42) {
  return(paste(x,y,zorg,sep = "+"))
}

mapply(mv3rdFunction,c(1:4),letters[1:4],zorg=month.abb[1:4])
mapply(mv3rdFunction,c(1:4),letters[1:4])
