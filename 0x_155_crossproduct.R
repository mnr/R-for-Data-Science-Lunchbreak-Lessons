# crossproduct & tcrossproduct

A <- matrix( c(1:9), nrow = 3)
B <- matrix( c(11:19), nrow = 3)

# crossproduct
# Not to be confused with a dot product (which is done with %*%). 
# these are convenience functions. Can be duplicated with transpose & %*%

crossprod(A,B)

#...which is equivalent to...
t(A) %*% B

# Regarding when to use crossprod() vs t(A) %*% B
# one may be faster than another based on the matrix being sparse. 
# But this will only make a difference on massive matrices.

# tcrossproduct

tcrossprod(A,B)

#...which is equivalent to...
A %*% t(B)


