# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for debug: five minutes of R

# source and library statements

# function definitions
GreatDivide <- function(grt.numerator,grt.denominator) {
  better.denominator <- CheckDenominator(grt.denominator)
  # divides grt.numerator by grt.denominator
  return(grt.numerator/better.denominator)
}

CheckDenominator <- function(check.this.denominator) {
  return(
    if (check.this.denominator != 0) {
      check.this.denominator
      } else { "error"
      }
    )
}

# browser() # simplest of calls. Use "stop" or Q to exit
# options(error = recover)
# debug(GreatDivide)
# undebug(GreatDivide)
# debug(CheckDenominator)
# isdebugged(CheckDenominator)
# undebug(CheckDenominator)
# showing debugonce
# showing undebug
# showing isdebugged
# showing debuggingState