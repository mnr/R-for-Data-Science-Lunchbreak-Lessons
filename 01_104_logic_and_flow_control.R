# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: logical operators and their effect on flow control


# && is "and", but evaluates left to right. use for flow control
someFunction <- function() {
  print("this function ran")
  return(TRUE)
}


# what happens depends on each value tested
if(FALSE && someFunction() ) { print("I printed") }
if(TRUE && someFunction() ) { print("I printed") }

# || is a bit trickier to understand
someFunction <- function() {
  print("this function ran")
  return(FALSE)
}

# test a boolean value "oror" against a function that returns FALSE
if (FALSE || someFunction()) {print("I printed")}
if (TRUE || someFunction()) {print("I printed")}

