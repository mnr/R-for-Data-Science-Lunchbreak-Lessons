# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for apply

idx_affiliate <- "https://linkedin-learning.pxf.io/apply" # affiliate link to the video
idx_video <- "apply-and-lapply" # just the name of the video - used for lookup to the URL
idx_task <- "apply" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("apply", "lapply", "apropos") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# main idea: don't use FOR loops if you can APPLY

data("WorldPhones") # The number of telephones in various regions of the world (in thousands).

# example for loop
for(aCountry in 1:ncol(WorldPhones)) {
  print(mean(WorldPhones[aCountry, ]))
}


# instead of "for" loops, use "apply"
# apply: Returns a vector or array or list of values obtained by applying a
# function to margins of an array or matrix.
# 1 = Row, 2 = Columns
apply(WorldPhones,1,mean)
apply(WorldPhones,2,mean)

# Here's how to pass additional arguments to the function
apply(WorldPhones,1,mean,trim=.2)

# there are many more apply-type functions
apropos(".apply")

# lapply: returns a list resulting from applying 
# a function to each element of original list
# lapply works best on lists
# asks: for each value in WorldPhones, Is this value greater than 10,000?
world.phone.list <- list(WorldPhones)
lapply(world.phone.list,function(x) {x>10000})
