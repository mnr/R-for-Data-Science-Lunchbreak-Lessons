# exercise files for LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_browser
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
