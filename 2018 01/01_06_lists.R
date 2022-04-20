# Description: Example file for lists

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_lists"
idx_video <- ""
idx_task <- "Data Structures"
idx_topics <- c("list", "str()")
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Data Structures are * Vectors * LISTS * Matrices * Arrays * Data Frames * factors

# lists are special types of vectors, but store mixed types:
I.am.a.vector <- c(1,TRUE,"gyre")
I.am.a.list <- list(1,TRUE,"gyre")
str(I.am.a.vector) # character
str(I.am.a.list) # mixed

# lists can contain lists
a.list <- list(letters[1:3]) # contains "a", "b", "c"
another.list <- list(1:5) # contains 1,2,3,4,5
still.another.list <- list(TRUE,FALSE,TRUE)
I.am.a.list <- list(a.list,another.list,still.another.list)
str(I.am.a.list)

# named list elements (aka key/value)
I.am.a.list <- list(bob=c(6.2,150),bill=c(5.4,110))
names(I.am.a.list)
I.am.a.list["bob"]
I.am.a.list$bob
I.am.a.list$bob[1]

# see also
# https://cran.r-project.org/doc/manuals/r-release/R-lang.html#List-objects
