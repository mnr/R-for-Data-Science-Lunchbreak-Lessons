# https://cran.r-project.org/package=flow

# install.packages("flow")
library(flow)

stuffToDo <- function(thisThing, thatThing) {
  if (thisThing > thatThing) {
    print(thatThing)
  } else {
    print(thisThing)
  }
  looper <- 10
  while (looper != 0) {
    looper <- looper - 1
  }
  bobaloo <- thisThing + thatThing
}

# static display of function logic
flow_view(stuffToDo)
flow_view(stuffToDo, truncate = 20)

# dynamic display of code during execution
flow_run(stuffToDo(3,5))
flow_run(stuffToDo(10,9))

# can be done with source files
flow_view("../R_code_challenge/04_01 rock paper scissors lizard spock SOLUTION.R")

