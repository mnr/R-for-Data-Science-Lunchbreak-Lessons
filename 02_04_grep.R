# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: grep - global regular expression print

haystack <- c("red", "blue", "green", "blue", "green forest")


grep("green", haystack)

grep("r", haystack) # returns position
grep("r", haystack, value = TRUE) # returns value
grepl("r", haystack) # returns boolean

sub("e", "+", haystack) # replaces pattern with replacement (once)
gsub("e", "+", haystack) # replaces pattern with replacement (global)
