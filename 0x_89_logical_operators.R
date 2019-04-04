# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: logical operators

# common to a lot of languages, but worth reviewing

# ! is "not"
!TRUE # equals false
!"apple" # must be a logical value

# & is "and"
TRUE & TRUE # equals true
TRUE & FALSE # equals false

# | is "or"
TRUE | TRUE # equals true
TRUE | FALSE # equals true

# xor is exclusive or
xor(TRUE, FALSE ) # true 
xor(FALSE, TRUE ) # true
xor(TRUE, TRUE ) # false
xor(FALSE, FALSE ) # false

# && is "and", but evaluates left to right. use for flow control
# || is "or", but evaluates left to right. use for flow control
setsValue <- function() {
  b <<- 9
}

firstVectorFalse <- c(FALSE, TRUE)
firstVectorTrue <- c(TRUE, FALSE)

# note that b never gets set because && evaluates first value of 
if(firstVectorFalse && setsValue() ) { print("doesn't matter") }
if(firstVectorTrue && setsValue() ) { print("doesn't matter") }

