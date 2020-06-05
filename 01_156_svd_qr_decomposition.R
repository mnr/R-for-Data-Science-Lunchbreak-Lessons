# svd and QR decomposition

A <- matrix( c(1:9), nrow = 3)

A <- matrix( c(1,1,0,1,0,1,0,1,1),
             nrow = 3)

# Singular Value Decomposition

svd(A)

# svd(A)$d is the singular values of x. Diagonal matrix
# svd(A)$u is left singular vectors. Unitary matrix
# svd(A)$v is the right singular vectors. Unitary matrix


# QR Decomposition

qr(A)
qrPacked <- qr(A)$qr

R <- qrPacked[upper.tri(qrPacked)]

Q <- qrPacked[lower.tri(qrPacked)]
