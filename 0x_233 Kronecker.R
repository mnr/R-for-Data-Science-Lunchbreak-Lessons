# Kronecker product, binary
# https://en.wikipedia.org/wiki/Kronecker_product

# a simple matrix
mOne <- matrix(1:4, nrow = 2)
mTwo <- matrix(c(2,1,0,2), nrow = 2)

mOne
mTwo
mOne %x% mTwo

# what %x% does...
matrix(c(mOne[1] * mTwo[1], mOne[1] * mTwo[2], mOne[2] * mTwo[1], mOne[2] * mTwo[2],
       mOne[1] * mTwo[3], mOne[1] * mTwo[4], mOne[2] * mTwo[3], mOne[2] * mTwo[4],
       mOne[3] * mTwo[1], mOne[3] * mTwo[2], mOne[4] * mTwo[1], mOne[4] * mTwo[3],
       mOne[3] * mTwo[3], mOne[3] * mTwo[4], mOne[4] * mTwo[3], mOne[4] * mTwo[4]),
       nrow = nrow(mOne) * nrow(mTwo))
