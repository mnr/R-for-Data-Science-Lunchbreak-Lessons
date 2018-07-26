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

# set debug on this function
debug(thisisafunction)

# which gets called again...and again...and again
for(index in 1:10) {
  thisisafunction(index)
}

undebug(thisisafunction)


# The solution is debugonce -------------------------------------
# set up debugonce on this function
debugonce(thisisafunction)

for(index in 1:10) {
  thisisafunction(index)
}


