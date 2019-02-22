# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: progress bar

myProgressBar <- txtProgressBar()

ticks <- 0

while (TRUE) {
  setTxtProgressBar(myProgressBar, ticks)
  ticks <- ticks + .01
  Sys.sleep(1)
}

close(myProgressBar)

# bells and whistles ------------------------------------------------------

ticks <- 0
maxTicks <- 100

myProgressBar <- txtProgressBar(min = 5, max = maxTicks,
                                char = "_-",
                                style = 3)

while (ticks < maxTicks) {
  setTxtProgressBar(myProgressBar, ticks)
  ticks <- ticks + 1
  Sys.sleep(1)
}

close(myProgressBar)
