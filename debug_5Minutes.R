# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for debug: five minutes of R

# here are a bunch of examples on debugging. 
# Uncomment these lines and try them out

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

# Here's what an error looks like. Uncomment this line and run it.
GreatDivide(2,0)

browser() # simplest of debuggers Use "stop button" or Q to exit
# uncomment the line in CheckDemoninator to see how this works

# recomment browser() in CheckDemnominator, then run the following line
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
# options(error = recover)

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
  listNameOfDebugged(function.name)
}

# # another way to use listNameOfDebugged
sapply(all.functions,listNameOfDebugged)  


# debug package- more advanced debug functions
install.packages("debug")
?'debug-package'
