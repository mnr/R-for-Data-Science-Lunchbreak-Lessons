# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Vector Math

# how would you multiply each item in an array by two?
# first create an array (actually, this is an "R" vector)
many.numbers <- c(1,2,3,4,5,6,7,8,9)
# btw...
many.numbers <- c(1:9)

# Most languages would do something like this
for (aNumber in many.numbers) {
  print(aNumber*2)
}

# R does this instead
many.numbers * 2

# to assign this to a variable
two.times <- many.numbers * 2

# other math operations work as well
many.numbers / 2
many.numbers + 2
many.numbers - 2

# R allows interaction between two arrays (aka vectors)
more.numbers <- c(2,4,3,6,8,5,0,8,2)
more.numbers
many.numbers
many.numbers + more.numbers
many.numbers * more.numbers

# what happens if the vectors are different lengths?
short.vector <- c(2,3,4)
many.numbers + short.vector
# short.vector is repeated as many times as necessary
# so many.numbers + short.vector is actually
# many.numbers is      1 2 3 4 5  6  7  8  9
# short.vector     2 3 4 2 3  4  2  3  4
# which results in 3 5 7 6 8 10  9 11 13
# it's called "recycling"
# but they need to be multiples of each other
short.odd.vector <- c(2,3,4,5)
many.numbers + short.odd.vector

# math operations also work on vectors
sum(many.numbers)
mean(many.numbers)
min(many.numbers)
max(many.numbers)
