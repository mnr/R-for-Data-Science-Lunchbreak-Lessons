# example for LinkedIn Learning Video: https://linkedin-learning.pxf.io/rweekly_equalIn

# create two vectors to demonstrate
vectA <- c(1:10)
vectB <- c(10:15)

# is vectA == vectB ?
setequal(vectA, vectB) 

# what parts of vectA are in vectB?
is.element(vectA, vectB) 

# what parts of vectB are in vectA?
is.element(vectB, vectA)

# equivalent notation for is.element(vectA, vectB)
vectA %in% vectB 

# elements in sets do not need to be sorted
vectBRandom <- sample(vectB, length(vectB))
vectBRandom
intersect(vectA, vectBRandom)
setdiff(vectBRandom, vectA)
setequal(vectB, vectBRandom)
