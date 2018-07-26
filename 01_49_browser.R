# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for browser

# main idea: Using the R debugger

printMyNumber <- function (aNumber) {
  print(aNumber)
}

thisisafunction <- function(someNumber) {
  keepRunning <- TRUE
  browser()
  while(isTRUE(keepRunning)) {
    printMyNumber(someNumber)
  }
}

thisisafunction(4)
