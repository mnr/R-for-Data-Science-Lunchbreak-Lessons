# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for debug: five minutes of R

# source and library statements

# function definitions
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
  })
}

# ?debug
# browser() # simplest of calls. Use "stop" or Q to exit
# options(error = recover)
# debug(GreatDivide)
# undebug(GreatDivide)
# debug(CheckDenominator)
# isdebugged(CheckDenominator)
# undebug(CheckDenominator)
# showing debugonce
# showing undebug



# isdebugged() will show if a function is debugged
# all.functions <- lsf.str() # list functions into all.functions
# 
listNameOfDebugged <- function(function.name) {
  # a simple function that shows debugged state of a function
  if(isdebugged(function.name)) {
    # undebug(function.name) # this would turn off debugging on all functions
    return(paste(function.name," is debugged"))
  } else {
    return(paste(function.name," is not debugged"))
  }
}
# 
# for (function.name in all.functions) {
#   # a simple program that uses listNameOfDebugged
#   listNameOfDebugged(function.name)
# }
# 
# # another way to use listNameOfDebugged
# sapply(all.functions,listNameOfDebugged)  



# debug package
# install.packages("debug")
# ?debug