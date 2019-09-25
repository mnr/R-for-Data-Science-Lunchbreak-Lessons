# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Watch the video at https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/data-frames-rbind?trk=insiders_215756_learning
# Discuss at https://groups.google.com/d/forum/r-for-data-science-lunchbreak-lessons
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Dataframes: rbind

idx_affiliate <- "https://linkedin-learning.pxf.io/rbind" # affiliate link to the video
idx_video <- "data-frames-rbind" # just the name of the video - used for lookup to the URL
idx_task <- "data.frame" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "rbind" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Main Idea: how to add rows to data.frames (or matrices)

# Need some data to play with
source("makeChickWeight.R") # builds a data.frame with ranked names

# data.frames: rbind -------------------------------------------------------
# row bind. Combine columns by rows
# rbind is like SQL union
# must be equal # of columns
chicks.one.and.two <- rbind(chick.one,chick.two)

# column names must be identical
chick.one.renamed <- chick.one
names(chick.one.renamed) <- c("grams","chronos","subject","food")
chicks.one.and.two <- rbind(chick.one.renamed,chick.two) # error: names don't match

# rbind matches by column name - not column position
chick.one.reordered <- chick.one[,c(3,1,2,4)]
chicks.one.and.two <- rbind(chick.one.reordered,chick.two) # result column order is reordered

