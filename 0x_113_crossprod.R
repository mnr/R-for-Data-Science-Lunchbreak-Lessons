idx_affiliate <- ""
idx_video <- ""
idx_task <- "matrix"
idx_topics <- c("%*%", "crossprod()", "tcrossprod()")
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# a simple matrix
MatrixOne <- matrix(1:4, nrow = 2)
MatrixTwo <- matrix(c(2,1,0,2), nrow = 2)

MatrixOne
MatrixTwo

# inner join matrix multiplication
MatrixOne %*% MatrixTwo
# What is happening?
MatrixOne[ 1, 1 ] * MatrixTwo[ 1, 1 ] + MatrixOne[ 1, 2 ] * MatrixTwo[ 2, 1 ] # = 5
MatrixOne[ 1, 1 ] * MatrixTwo[ 1, 2 ] + MatrixOne[ 1, 2 ] * MatrixTwo[ 2, 2 ] # = 6
MatrixOne[ 2, 1 ] * MatrixTwo[ 1, 1 ] + MatrixOne[ 2, 2 ] * MatrixTwo[ 2, 1 ] # = 8
MatrixOne[ 2, 1 ] * MatrixTwo[ 1, 2 ] + MatrixOne[ 2, 2 ] * MatrixTwo[ 2, 2 ] # = 8

# matrix multiplication with t(x) (transpose) built-in
crossprod(MatrixOne, MatrixTwo)

# What is crossprod actually doing?
# 1) translate X matrix
t_matrixOne <- t(MatrixOne)
# 2) multiply matrix
t_matrixOne[ 1, 1 ] * MatrixTwo[ 1, 1 ] + t_matrixOne[ 1, 2 ] * MatrixTwo[ 2, 1 ] # = 4
t_matrixOne[ 1, 1 ] * MatrixTwo[ 1, 2 ] + t_matrixOne[ 1, 2 ] * MatrixTwo[ 2, 2 ] # = 4
t_matrixOne[ 2, 1 ] * MatrixTwo[ 1, 1 ] + t_matrixOne[ 2, 2 ] * MatrixTwo[ 2, 1 ] # = 10
t_matrixOne[ 2, 1 ] * MatrixTwo[ 1, 2 ] + t_matrixOne[ 2, 2 ] * MatrixTwo[ 2, 2 ] # = 8

# tcrossprod translates the Y matrix
tcrossprod(MatrixOne, MatrixTwo)

