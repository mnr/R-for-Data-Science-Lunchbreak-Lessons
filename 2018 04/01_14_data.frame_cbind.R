# Exercise files for LinkedIn Learning: 
# Description: Example file for Dataframes: cbind

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_cbind" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "data.frame" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "cbind" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Main Idea: how to add columns to data.frames (or matrices)

# Need some data to play with
source("makeChickWeight.R") # builds a data.frame with ranked names

# data.frames: cbind --------------------------------------------------------
# column bind. Combine dataframes (or matrices or vectors) by columns
# cbind, unlike merge, does not attempt to match values between columns 
cbind_chicks_names <- cbind(ChickWeight,chicknames) # oops. # of Rows must be equal
cbind_chicks_names <- cbind(ChickWeight[1:50,],chicknames)

