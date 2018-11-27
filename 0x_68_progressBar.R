# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Display a progress bar

# not available under windows

library(tcltk)

tkStartGUI()

progBar <- tkProgressBar(title = "my progress",
              min = 0,
              max = 1000)

indxVal <- 0

while (TRUE) {
  indxVal <- indxVal + .01
  setTkProgressBar(progBar, indxVal, title = "something")
  print(indxVal)
}
DISPLAY
