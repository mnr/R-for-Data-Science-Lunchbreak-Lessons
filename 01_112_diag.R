idx_affiliate <- "https://linkedin-learning.pxf.io/rweeklydiag"
idx_video <- ""
idx_task <- ""
idx_topics <- "diag()"
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# let's build a matrix
testMatrix <- matrix(c(1, 3, 5, 7, 9,
                       3,20,12,13,14,
                       5,12,21,15,16,
                       7,13,15,22,17,
                       9,14,16,17,23),
                     nrow = 5)
# now...how to get the diagonal values?
diag(testMatrix)

# other uses of diag

diag(nrow = 5) # return an identity matrix nrow x nrow
diag(5) # returns an identity matrix of n x n

diag(TRUE, 3)
diag(c(TRUE, FALSE, TRUE, FALSE)) # creates a matrix with the vector as the diagonal
diag(1:5) # creates a matrix with 1-5 through the diagonal


     