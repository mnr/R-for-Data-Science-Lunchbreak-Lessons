# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for sets

# create two vectors to demonstrate
vectA <- c(1:10)
vectB <- c(10:15)

# union - combine the vectors - removing duplicates
union(vectA, vectB)

# intersect - find the overlap
intersect(vectA, vectB)

# what is unique about vectA?
setdiff(vectA, vectB) 

# what is unique about vectB?
setdiff(vectB, vectA) 


# elements in sets do not need to be sorted
vectBRandom <- sample(vectB, length(vectB))
vectBRandom
intersect(vectA, vectBRandom)
setdiff(vectBRandom, vectA)
setequal(vectB, vectBRandom)
