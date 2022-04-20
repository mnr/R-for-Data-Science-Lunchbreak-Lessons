# Evaluate the importance of a number with rank()	The relationship between
# numbers in a data set is just as important as the values in a dataset. Rank
# provides R users with insight on how important a value in a dataset actually
# is.

aVector <- c(1,5,5,6,7)

# replace each number with it's overall rank in value
rank(aVector)

# mix up the numbers - but their rank remains consistent
aVector <- c(7,6,5,1,5)
rank(aVector)

# options for identifying tied values
exerciseTies <- function(aVector) {
  print(aVector)
  # average - mean value
  print(paste("ties.method:Average", list(rank(aVector, ties.method = "average"))))
  # first - first come, first numbered
  print(paste("ties.method:first  ", list(rank(aVector, ties.method = "first"))))
  # last - last come, first numbered
  print(paste("ties.method:last   ", list(rank(aVector, ties.method = "last"))))
  # random - random numbered
  print(paste("ties.method:random ", list(rank(aVector, ties.method = "random"))))
  # max - the position of the max number in collection of ties
  print(paste("ties.method:max    ", list(rank(aVector, ties.method = "max"))))
  # min - the position of the min number in collection of ties
  print(paste("ties.method:min    ", list(rank(aVector, ties.method = "min"))))
}
exerciseTies(aVector)
