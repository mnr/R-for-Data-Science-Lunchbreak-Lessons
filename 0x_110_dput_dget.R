# Copyright Mark Niemann-Ross, 2019

idx_affiliate <- ""
idx_video <- ""
idx_task <- "files"
idx_topics <- c("dput()", "dget()", "save()", "write.csv()")
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# dput will write an R language version of an R object to disk
dput(ChickWeight, file = "chickweight_dput.R")
# includes meta data

# compare to save
save(ChickWeight, file = "chickweight_save.rds")
# save creates a binary version of the file

# file.write would create a csv
write.csv(ChickWeight, file = "chickweight_writecsv.csv")
# does not include meta data or ability to buid the file programmatically 

# retrieve a dput file.
# either run the dput code
# ... or ...
newChickWeight <- dget(file = "chickweight_dput.R")


# dput & dget might not work. Use save and load to transfer R objects
