# scale( )

# simple example
myvector <- c(1:11)
scale(myvector)

# scale a matrix
mymatrix <- matrix(c(1:13, 23:30, 38:42), ncol = 2)
mymatrix
boxplot(mymatrix)
scale(mymatrix)
boxplot(scale(mymatrix))


