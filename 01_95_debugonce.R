# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for debugonce

# main idea: Using the R debugger

# a simple function
thisisafunction <- function(someNumber) {
  print(someNumber)
}

# set a breakpoint at this function
debugonce(thisisafunction)

# trigger the browser
thisisafunction(3) 


# demonstrate problems with debug -----------------------------------------

# set up debug at this function
debug(thisisafunction)

for(index in 1:10) {
  thisisafunction(index)
}

undebug(thisisafunction)


# demonstrate solution with debugonce -------------------------------------
# set up debug at this function
debugonce(thisisafunction)

for(index in 1:10) {
  thisisafunction(index)
}


