# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Array

# Data Structures are * Vectors * Lists * Matrices * ARRAY * Data Frame * factors

# array is a vector or list with 2+ dimensions
# (Matrix is a 2-dimension Array. Array is like stacked matrices)
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves","did","gyre","and","gimble","in","wabe")

# array(data_vector,dim_vector)
# dimension is expressed as row, column, z-index
I.am.an.array <- array(I.am.a.vector,c(2,3,2))
I.am.an.array

# indexing into the array
I.am.an.array[2,3,3] # this fails because there is not a third level
I.am.an.array[2,3,2]
I.am.an.array[2,3,2] <- "a new value"
I.am.an.array[2,,2] # omission returns the entire range. Here - all columns of row 2, table 2

PAUSE!!!!!

# dimnames
my.row.names <- c("up","down")
my.column.names <- c("left","middle","right")
my.table.names <- c("behind","in front")
dimnames(I.am.an.array) <- list(my.row.names,my.column.names,my.table.names)
I.am.an.array
I.am.an.array["down",3,2]
