# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: for loop 

# R vectors are faster - but sometimes you need a while loop
# be careful not to get in an endless loop. The Condition needs to eventually change

# while loops in R are standard

bobsYourUncle <- 1 # initialize a vector
  
while (bobsYourUncle < 5) {
  print(bobsYourUncle)
  bobsYourUncle <- bobsYourUncle + 1
}

print(bobsYourUncle) # vector contains exit value

# what happens if vector contains more than one value?

bobsYourUncle <- c(1,3) # the condition has length > 1 and only the first element will be used

while (bobsYourUncle < 5) {
  print(bobsYourUncle)
  bobsYourUncle <- bobsYourUncle + 1 # note that 1 is added to both vector elements
}

print(bobsYourUncle) # vector[1] contains exit value

# it is possible to test other attributes...such as length of a vector
bobsYourUncle <- c(1,3)
while(length(bobsYourUncle) < 5) {
  print(bobsYourUncle)
  bobsYourUncle <- append(bobsYourUncle, 0)
}
