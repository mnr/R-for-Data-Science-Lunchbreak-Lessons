# Copyright Mark Niemann-Ross, 2019

affiliate <- ""
video <- ""
topics <- "issymetric(), matrix"
index_build(affiliate, video, topics)


# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

testMatrix <- matrix(1:4, nrow = 2)
isSymmetric(testMatrix) # false

testMatrix <- matrix(c(0,1,1,0), nrow = 2)
isSymmetric(testMatrix) # true

# a more sophisticated example
testMatrix <- matrix(c(1, 3, 5, 7, 9,
                       3,20,12,13,14,
                       5,12,21,15,16,
                       7,13,15,22,17,
                       9,14,16,17,23
                       ),
                     nrow = 5)
isSymmetric(testMatrix) # true


testMatrix <- matrix(c(0,1,1,0), nrow = 2, dimnames = list(c("orange", "apple"), c("fig", "banana")))
isSymmetric(testMatrix) # false because row/column names don't match
testMatrix <- matrix(c(0,1,1,0), nrow = 2, dimnames = list(c("orange", "apple"), c("orange", "apple")))
isSymmetric(testMatrix) 

testMatrix <- matrix(c(0,1,2,2,1,0), nrow = 3)
isSymmetric(testMatrix) # false



