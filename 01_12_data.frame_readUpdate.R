# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for data frame read and update

idx_affiliate <- "https://linkedin-learning.pxf.io/data.frame_read_update" # affiliate link to the video
idx_video <- "data-frames-read-and-update" # just the name of the video - used for lookup to the URL
idx_task <- "data.frame" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("create variable", "delete variable", "change variable") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Main idea: Navigating data.frames

# Need some data to play with
data("ChickWeight")

# Create Variables --------------------------------------------------------
ChickWeight$someNumbers <- c(1:nrow(ChickWeight)) # number of rows must be equal

# Delete Variables --------------------------------------------------------
ChickWeight$someNumbers <- NULL

# Change Value of Variables -----------------------------------------------
medianWeight <- median(ChickWeight$weight)
ChickWeight$weight <- ifelse(ChickWeight$weight > medianWeight,"Larger","Smaller")

# You may have heard of attach() as a way of making dataframe references easier. DON'T DO IT!
# instead, use with()
medianTime <- median(ChickWeight$Time)
ChickWeight$Time <- with(ChickWeight, ifelse(Time > medianTime,"Longer","Shorter"))
