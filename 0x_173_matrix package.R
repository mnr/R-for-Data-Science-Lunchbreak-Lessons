# matrix package

# one of the recommended packages
installed.packages(priority = "recommended")

library(Matrix) # notice Capital M

# understanding sparse matrices

matrixRows <- 100
matrixCols <- 100
randomOnesZeros <- sample(c(0,0,0,1), matrixRows * matrixCols, replace = TRUE)

matrix_notSparse <- matrix(randomOnesZeros, nrow = matrixRows)
matrix_Sparse <- Matrix(randomOnesZeros, nrow = matrixRows, sparse = TRUE)

# what these look like
matrix_notSparse
matrix_Sparse

# size comparison
object.size(matrix_notSparse)
object.size(matrix_Sparse)

