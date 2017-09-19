# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Debugging


# This is examples on debugging. 

# function definitions to be used in the following examples
GreatDivide <- function(grt.numerator, grt.denominator) {
  better.denominator <- CheckDenominator(grt.denominator)
  # divides grt.numerator by grt.denominator
  return(grt.numerator / better.denominator)
}

CheckDenominator <- function(check.this.denominator) {
  return(if (check.this.denominator != 0) {
    check.this.denominator
  } else {
    "OOPS! returned a string instead of something useful"
    # r style guide says this should be stop("divide by zero")
    # browser() # uncomment this line to drop into browser in an error
  })
}

# Here's what an error looks like. Run this line.
GreatDivide(2,0)

# browser() # simplest of debuggers Use "stop button" or Q to exit
# To see how this works...
# 1) uncomment the line in CheckDemoninator 
# 2) reload CheckDenominator
# 3) The run GreatDivide with a denominator = 0
GreatDivide(2,0)

# recomment browser() in CheckDemnominator, 
# reload the function, then run the following line
debug(GreatDivide)
# then this...
GreatDivide(2,0)
# see how it goes into the debugger?

# undebug will turn off the debugger on CheckDenominator
undebug(GreatDivide)

# debugonce is the same as debug()
debugonce(GreatDivide)
GreatDivide(2,0)
GreatDivide(2,0)

?debug # Pulls up the documentation for debug. Look at "debug {base}"

# isdebugged() will show if a function is debugged
all.functions <- lsf.str() # list functions into all.functions
 
listNameOfDebugged <- function(function.name) {
  # a simple function that shows debugged state of a function
  if(isdebugged(function.name)) {
    # undebug(function.name) # this would turn off debugging on all functions
    return(paste(function.name," is debugged"))
  } else {
    return(paste(function.name," is not debugged"))
  }
}

for (function.name in all.functions) {
  # a simple program that uses listNameOfDebugged
  print(listNameOfDebugged(function.name))
}

# # another way to use listNameOfDebugged
sapply(all.functions,listNameOfDebugged)  


# debug package- more advanced debug functions
install.packages("debug")
?'debug-package'

# Check out options(error=recover) for some advanced techniques
?options

