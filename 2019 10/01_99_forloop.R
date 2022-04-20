# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: for loop 
# affiliate: https://linkedin-learning.pxf.io/rweekly_forloop

# R vectors are faster - but sometimes you need a for loop


for (bobsYourUncle in 1:5) {
  print(bobsYourUncle)
}

bobsYourUncle # the variable retains it's value after the for loop ends

# changing the variable inside the loop doesn't affect the index
for (bobsYourUncle in 1:5) {
  bobsYourUncle <- 3
  print(bobsYourUncle) # always prints 3 but index continues
}

for (bobsYourUncle in 1:5) {
  print(bobsYourUncle) 
  if (bobsYourUncle == 4) break # stops the loop
}

# strings work as well as numbers
for(bobsYourUncle in c("This", "that", "another")) {
  print(bobsYourUncle)
}

# variables are reset by for loops
bobsYourUncle <- 10

for(bobsYourUncle in 1:5) {
  print(bobsYourUncle)
}

bobsYourUncle

# what happens if you provide a dataframe?
for (bobsYourUncle in ChickWeight) {
  print(bobsYourUncle)
}

# or matrix?
for(bobsYourUncle in matrix(1:30, nrow = 3)) {
  print(bobsYourUncle)
}
