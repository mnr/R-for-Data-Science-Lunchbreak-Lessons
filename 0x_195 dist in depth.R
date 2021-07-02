# dist() in depth

# used in clustering and machine learning
# finds distance between data points

mymatrix <- matrix(c(1,1,1), nrow = 3)
mymatrix
dist(mymatrix)

mymatrix <- matrix(c(1:3), nrow = 3)
mymatrix
dist(mymatrix)

mymatrix <- matrix(c(1:6), nrow = 3)
colnames(mymatrix) <- c("Xpos","Ypos")
mymatrix

# a plot for reference
plot(mymatrix, xlim = c(0,4), ylim = c(3,6))
text(mymatrix, labels = c("row1", "row2", "row3"), pos = 4)

# what does dist calculate?
dist(mymatrix)

# euclidian is the default method to calculate distance
# aka Pythagorean distance
# distance from row 1 to row 2
x1 <- c(1,4) # first row = first point
x2 <- c(2,5) # second row = second point
x2 <- c(3,6) # try this as a proof
distA <- x2[1] - x1[1] # length of A
distB <- x2[2] - x1[2] # length of B
sqrt(distA^2 + distB^2) # A^2 + B^2 = C^2

# advance math used for larger matrices
mymatrix <- matrix(c(1:25), nrow = 5)
mymatrix
dist(mymatrix)

# other ways to calculate distance
# maximum, manhattan, canberra, binary, minkowski
mymatrix <- matrix(c(abs(as.integer(rnorm(10)*10))), ncol = 2)
mymatrix
dist(mymatrix, method = "maximum") # max distance between two numbers
dist(mymatrix, method = "manhattan") # distA + distB
dist(mymatrix, method = "canberra") # weighted version of manhattan
dist(mymatrix, method = "minkowski")

# binary is a bit different. measures proportion of bits = 1 when both = 1.
# see help description for details
mymatrix <- matrix(sample(0:1, 10, replace = TRUE), ncol = 2)
mymatrix
dist(mymatrix, method = "binary")

