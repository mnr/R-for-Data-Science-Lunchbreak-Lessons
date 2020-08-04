# norm and rcond

# define a matrix

sampleMatrix <- matrix(c(3,9,5,
                         7,2,4,
                         6,8,1) , nrow = 3, byrow = TRUE)

norm(sampleMatrix, type = "O" ) # "One" or 1 norm, maximum abs column sum
norm(sampleMatrix, type = "I" ) # Infinity norm 
norm(sampleMatrix, type = "F" ) # Frobenius 
norm(sampleMatrix, type = "M" ) # Maximum modulus of all elements 
norm(sampleMatrix, type = "2" ) # Spectral or 2-norm

# rcond
rcond(sampleMatrix, norm = "2")

# kappa
kappa(sampleMatrix)
# aka...
max(sampleMatrix) / min(sampleMatrix)
