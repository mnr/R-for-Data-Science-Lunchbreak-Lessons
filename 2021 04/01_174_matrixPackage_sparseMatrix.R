# matrix package
# understanding sparse matrices

library(Matrix)

# an alternative to Matrix(x, sparse = TRUE)

# setup a matrix
matrixRows <- 10 # just a tiny example
matrixCols <- 10

# These are the only values in the matrix
# The value are in pairs. row/column
# so points at 3/5 and 6/2
valueInRow <- c(3, 6)
valueInCol <- c(5, 2)

# create the sparse matrix
newSparseMatrix <- sparseMatrix(i = valueInRow,
                                j = valueInCol,
                                dims = c(matrixRows, matrixCols)
             )

newSparseMatrix # by default, the values are binary

# but...we can also assign values
newSparseMatrix <- sparseMatrix(i = valueInRow,
                                j = valueInCol,
                                dims = c(matrixRows, matrixCols),
                                x = c(30,62)
)

newSparseMatrix


