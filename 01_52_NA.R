# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: dealing with NA

?NA
is.na(NA)

is.na(NaN)

is.na("NA") # "NA" is a string

# test contents of a vector
test_vector <- c(1,2,3,NA,5)

is.na(test_vector)

anyNA(test_vector) # is there an NA in the data?

mean(test_vector) # many functions have built-in NA handling
mean(test_vector, na.rm = TRUE)

# ways to convert NA to zero
ifelse(is.na(test_vector),0,test_vector)
test_vector[is.na(test_vector)] <- 0

# other useful NA tools
na.fail(test_vector)
na.omit(test_vector) # remove NA, returning index to items removed
