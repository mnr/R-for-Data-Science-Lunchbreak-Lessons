# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for Vector Math: five minutes of R

# how would you multiply each item in an array by two?
# first create an array
an.array = c(1,2,3,4,5,6,7,8,9)

# Most languages would do something like this
for (aNumber in an.array) {
  print(aNumber*2)
}

# R does this instead
an.array * 2

# to assign this to a variable
two.times.array <- an.array * 2

# other math operations work as well
an.array / 2
an.array + 2
an.array - 2

# R allows interaction between two arrays (aka vectors)
another.array <- c(2,4,3,6,8,5,0,8,2)
an.array + another.array
an.array * another.array

# what happens if the vectors are different lengths?
short.vector <- c(2,3,4)
an.array + short.vector
# short.vector is repeated as many times as necessary
# so an.array + short.vector is actually
# an.array is      1 2 3 4 5  6  7  8  9
# short.vector     2 3 4 2 3  4  2  3  4
# which results in 3 5 7 6 8 10  9 11 13
# it's called "recycling"
# but they need to be multiples of each other
short.odd.vector <- c(2,3,4,5)
an.array + short.odd.vector

# math operations also work on vectors
sum(an.array)
mean(an.array)
min(an.array)
max(an.array)
