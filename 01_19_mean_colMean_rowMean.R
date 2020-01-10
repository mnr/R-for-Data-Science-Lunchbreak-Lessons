# Example file for LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_colmeans
# Description: Example file for mean, colMean, & rowMean

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_colmeans" # affiliate link to the video
idx_video <- "rweekly_colmeans" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("colMeans()","rowMeans()","apply()") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# main idea: specialty functions vs apply - speed and clarity of code

I.am.a.matrix <- matrix(1:30,nrow = 6) # need some data
I.am.a.matrix # what does this look like?

# calculating mean with apply -------------------------------------------------------
apply(I.am.a.matrix,1,mean) # equivalent of rowMeans(I.am.a.matrix)
apply(I.am.a.matrix,2,mean) # equivalent of colMeans(I.am.a.matrix)

# calculating mean with rowMeans ------------------------------------------
rowMeans(I.am.a.matrix) # means of all rows
colMeans(I.am.a.matrix) # means of all columns

# and other similar functions
colSums(I.am.a.matrix) # sum of all columns


