# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: repeat loop 

# repeat just loops forever. You'll need break

bobsYourUncle <- 1

repeat {
  print(bobsYourUncle)
  bobsYourUncle <- bobsYourUncle + 1
  if(bobsYourUncle > 10) {break}
}

# This is considered better programming
bobsYourUncle <- 1
while (bobsYourUncle < 11) {
  print(bobsYourUncle)
  bobsYourUncle <- bobsYourUncle + 1
}

# but perhaps you're testing multiple vectors...

repeat {
  if (rnorm(1) > 3.8) break # ... if random number greater than 3.8
  if (as.POSIXlt(Sys.time())$hour > 15) break # ... if later than 3pm
  # or test for hardware value (useful for IoT)
}
