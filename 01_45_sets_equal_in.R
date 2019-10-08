# example for LinkedIn Learning Video: https://linkedin-learning.pxf.io/rweekly_equalIn

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_equalIn" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("setequal()","is.element()","%in%") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

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
