# The determinant of a matrix

# create a sample matrix
A <- matrix(c(10,12,5,30), nrow = 2)
A
# in long form, the determinant is calculated
A[1,1]*A[2,2] - A[1,2]*A[2,1]

# ... instead, use R ...
det(A)

# determinant returns modulus and sign
determinant(A, logarithm = TRUE) # TRUE is the default value for logarithm

determinant(A, logarithm = FALSE)

#...so...
determinant(A, logarithm = TRUE)$modulus[1] == log(det(A)) #[1] necessary because determinant returns a list

# ...and...
determinant(A, logarithm = FALSE)$modulus[1] == det(A) #[1] necessary because determinant returns a list

# ...cleaner presentation...
unlist(determinant(A))
unlist(determinant(A, logarithm = FALSE))
