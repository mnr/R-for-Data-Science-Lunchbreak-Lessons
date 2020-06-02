# use solve for matrix math
# specifically, use solve to find the inverse of a matrix

# Matrix A %*% Inverse of Matrix A == Identity matrix
# or...
MatrixA <- matrix(c(3:6), nrow = 2)
MatrixA

IdentityMatrix <- diag(2)
IdentityMatrix

# So...what is the inverse of matrix A?
# use solve()
InverseMatrixA <- solve(MatrixA, IdentityMatrix)

# to prove...
MatrixA %*% InverseMatrixA # will equal matrix(c(1,0,0,1), nrow = 2)
# tada!

# by the way, solve() assumes the second argument is an identity matrix
# so...
solve(MatrixA) # ... is the same as solve(MatrixA, IdentityMatrix)
