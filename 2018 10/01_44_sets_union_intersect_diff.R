# example code for https://linkedin-learning.pxf.io/Rweekly_setsUnionInterDiff
# Description: Example file for sets

idx_affiliate <- "https://linkedin-learning.pxf.io/Rweekly_setsUnionInterDiff" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("union()","intersect()","setdiff()", "setequal()") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

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
