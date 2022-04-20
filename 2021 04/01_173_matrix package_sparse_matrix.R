# matrix package
# understanding sparse matrices

# one of the recommended packages
installed.packages(priority = "recommended")

library(Matrix) # notice Capital M


matrixRows <- 10000
matrixCols <- 10000
randomOnesZeros <- sample(c(0,0,0,1), 
                          matrixRows * matrixCols, 
                          replace = TRUE)

matrix_Dense <- matrix(randomOnesZeros, nrow = matrixRows)

matrix_Sparse <- Matrix(randomOnesZeros, nrow = matrixRows, 
                        sparse = TRUE)

# what these look like
matrix_Dense[1:10,1:10]
matrix_Sparse[1:10,1:10]

# size comparison
object.size(matrix_Dense)
object.size(matrix_Sparse)

# speed comparison

library(microbenchmark)

microbenchmark(
  sum(matrix_Dense),
  sum(matrix_Sparse),
  times = 10
)
