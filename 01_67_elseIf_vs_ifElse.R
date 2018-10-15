# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: else if vs ifelse

testExpression <- 4

# standard if then else
if ( testExpression == 4 ) {
  print("Expression is true")
} else {
  print("Expression is false")
}

# alternative form
ifelse( testExpression == 4,
        "Expression is true",
        "Expression is false")

# look what happens if testing vector
testExpression <- c(3,4,5)
# standard form fails. ifelse produces a vector of values

# a third alternative
testExpression <- 4 # only works if length(EXPR) == 1

if (testExpression == 4) "Expression is true" else "Expression is false"
