# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for Array: five minutes of R

# array is a vector or list with 2+ dimensions
# (Matrix is a 2-dimension Array. Array is like stacked matrices)
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves")
I.am.a.matrix <- matrix(I.am.a.vector,nrow=2,ncol=3)

I.am.a.longer.vector <- c(I.am.a.vector,c("did","gyre","and","gimble","in","wabe"))

# array(data_vector,dim_vector)
# dimension is expressed as row, column, z-index
I.am.a.array <- array(I.am.a.longer.vector,c(2,3,2))
I.am.a.array
