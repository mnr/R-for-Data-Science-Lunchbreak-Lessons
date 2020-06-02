# review of matrix math

# define two matrices
A <- matrix( c(1:9), nrow = 3)
B <- matrix( c(11:19), nrow = 3)

# Addition
A + B


# Subtraction
A - B
B - A


# Multiplication - simple
A * B


# Multiplication - "dot product"
# first row/first column
A %*% B

# to illustrate
A
B

A[1,1] * B[1,1] +
  A[1,2] * B[2,1] +
  A[1,3] * B[3,1]

# Division

# **HA - just kidding**. 
# There is no matrix division. Instead, use the inverse. 

