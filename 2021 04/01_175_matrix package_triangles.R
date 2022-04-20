# Matrix Package: Triangles
library(Matrix)

matrixRows <- 10 # just a tiny example
matrixCols <- 10
valueInRow <- c(1:matrixRows, sample(1:matrixRows,10))
valueInCol <- c(1:matrixCols, sample(1:matrixCols,10))
newSparseMatrix <- sparseMatrix(i = valueInRow,
                                j = valueInCol,
                                dims = c(matrixRows, matrixCols),
                                x = c(1:(matrixRows*2))
)

# let's examine the layout just created
valueInRow
valueInCol
1:(matrixRows*2)
newSparseMatrix
# graphic representation of a sparse matrix
image(newSparseMatrix)

# extracting upper and lower triangles
tril(newSparseMatrix) # return the lower triangle
triu(newSparseMatrix) # return the upper triangle

# Matrix adds column means and sums
colMeans(newSparseMatrix)
rowSums(newSparseMatrix)

# Matrix contains advanced matrix tools
# facmul - multiplications by decomposition factors
# expand - expand a decomposition into factors
# Hilbert - create a Hilbert Matrix
Hilbert(3)
# nnzero - the number of nonzero values in a matrix