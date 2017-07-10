# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for Matrix: five minutes of R

# matrix is a vector or list with dimensions
# (Matrix is a 2-dimension Array. Array is like stacked matrices)
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves")

I.am.a.matrix <- matrix(I.am.a.vector,nrow=2,ncol=3)
I.am.a.matrix
I.am.a.matrix[2,3]
dim(I.am.a.matrix)

# byrow
I.am.a.matrix <- matrix(I.am.a.vector,nrow=2,ncol=3,byrow=TRUE)
I.am.a.matrix
I.am.a.matrix <- matrix(I.am.a.vector,nrow=2,ncol=3,byrow=FALSE)
I.am.a.matrix

# dimnames
lots.o.letters <- c(letters[1:10],LETTERS[1:10])
letter.matrix <- matrix(lots.o.letters,ncol = 2,dimnames = list(c(),c("lowercase","UPPERCASE")))
letter.matrix
# or by row
letter.matrix <- matrix(lots.o.letters,nrow = 2,dimnames = list(c("lowercase","UPPERCASE"),c()))
letter.matrix

#transpose
matrix.transposed <- t(I.am.a.matrix)
matrix.transposed[2,3] #oops
matrix.transposed[3,2] #works because there are now 3 rows and 2 columns

# combine matrix
Im.another.matrix <- matrix(letters,nrow=2)
cbind(I.am.a.matrix,Im.another.matrix) # cbind is column-bind

Im.a.LETTER.matrix <- matrix(LETTERS,ncol=3)
rbind(I.am.a.matrix,Im.a.LETTER.matrix) # rbind is row-bind

