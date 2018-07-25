# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for sets

vectA <- c(1:10)
vectB <- c(10:15)

union(vectA, vectB)

intersect(vectA, vectB)

setdiff(vectA, vectB) # what is unique about vectA?
setdiff(vectB, vectA) # what is unique about vectB?

setequal(vectA, vectB) # is vectA == vectB ?

is.element(vectA, vectB) # what parts of vectA are in vectB?
is.element(vectB, vectA) # what parts of vectB are in vectA?
vectA %in% vectB # == is.element(vectA, vectB)

# elements in sets do not need to be sorted
vectBRandom <- sample(vectB, length(vectB))
vectBRandom
intersect(vectA, vectBRandom)
setdiff(vectBRandom, vectA)
setequal(vectB, vectBRandom)
