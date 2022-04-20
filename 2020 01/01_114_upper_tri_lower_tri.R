idx_affiliate <- "https://linkedin-learning.pxf.io/rweeklyUpperLowerTri"
idx_video <- ""
idx_task <- "matrix"
idx_topics <- c("upper.tri()", "lower.tri()", "diag()")
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

testMatrix

# upper.tri and lower.tri returns which positions are in the upper or lower triangle
upper.tri(testMatrix)
lower.tri(testMatrix)

# how to use it
testMatrix[upper.tri(testMatrix)] <- 0
testMatrix

# include the diag values
upper.tri(testMatrix, diag = FALSE) # default
upper.tri(testMatrix, diag = TRUE) # include diagonal
