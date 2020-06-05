# eigen values and vectors


aMatrix <- matrix( c(1,1,0,1,0,1,0,1,1),
             nrow = 3)
aMatrix

# Here's the eigen value and vector

eigen(aMatrix)



# produce a diagonal matrix of the eigenvalues
diag(eigen(aMatrix)$values)
