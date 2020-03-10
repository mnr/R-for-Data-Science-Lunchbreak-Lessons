# Copyright Mark Niemann-Ross, 2019

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_fileinfo"
idx_video <- ""
idx_task <- "files"
idx_topics <- c("file.info()", "file.mode()", "file.mtime()", "file.size()")
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

file.info.dataframe <- file.info(".RData")
View(file.info.dataframe)

# just the first six columns
file.info(".RData", extra_cols = FALSE)

# some shortcuts
file.info(".RData")[ , "mode"]
# ...or...
file.mode(".RData")
# also
file.mtime(".RData")
file.size(".RData")

# get inforation about all files in current directory
file.info.dataframe <- file.info(dir())

file.info("notAFile") # returns lots of NA
