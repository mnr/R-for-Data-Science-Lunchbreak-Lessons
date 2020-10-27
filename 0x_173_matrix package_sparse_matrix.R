# matrix package
# understanding sparse matrices

# one of the recommended packages
installed.packages(priority = "recommended")

library(Matrix) # notice Capital M


matrixRows <- 10000
matrixCols <- 10000
randomOnesZeros <- sample(c(0,0,0,1), matrixRows * matrixCols, replace = TRUE)

matrix_notSparse <- matrix(randomOnesZeros, nrow = matrixRows)
matrix_Sparse <- Matrix(randomOnesZeros, nrow = matrixRows, sparse = TRUE)

# what these look like
matrix_notSparse
matrix_Sparse

# size comparison
object.size(matrix_notSparse)
object.size(matrix_Sparse)

# speed comparison

library(microbenchmark)

microbenchmark(
  sum(matrix_notSparse),
  sum(matrix_Sparse),
  times = 1000
)
