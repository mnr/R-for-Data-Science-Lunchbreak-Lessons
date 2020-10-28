# matrix package
# understanding sparse matrices

library(Matrix)

# an alternative to Matrix(x, sparse = TRUE)

matrixRows <- 10
matrixCols <- 10

valueInRow <- c(3, 6)
valueInCol <- c(5, 2)

newSparseMatrix <- sparseMatrix(i = valueInRow,
                                j = valueInCol,
                                dims = c(matrixRows, matrixCols)
             )

newSparseMatrix

newSparseMatrix <- sparseMatrix(i = valueInRow,
                                j = valueInCol,
                                dims = c(matrixRows, matrixCols),
                                x = c(30,62)
)

newSparseMatrix

