# example code for https://linkedin-learning.pxf.io/Rweekly_setsUnionInterDiff
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
