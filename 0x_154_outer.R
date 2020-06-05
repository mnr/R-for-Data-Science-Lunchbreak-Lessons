# outer product of two matrices

# Outer product of two vectors
# Transpose the second vector 

vec1 <- c(1:5)
vec2 <- c(6:10)
  
# These three versions produce the same result...

vec1 %*% t(vec2) # the actual formula 
outer(vec1, vec2) # the R function (assume FUN = "*")
vec1 %o% vec2 # %o% is a wrapper for outer()


# Outer product of two matrices
A <- matrix( c(1:9), nrow = 3)
B <- matrix( c(11:19), nrow = 3)

# Here's the outer product. 
# This multiplies the first matrix by 
# individual values from the second matrix.

# Think of this as...

A * B[1,1]
A * B[2,1]
# ...and so on

outer(A,B) 



