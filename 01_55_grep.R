# Exercise file for LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_grep
# Description: grep - global regular expression print

haystack <- c("red", "blue", "green", "blue", "green forest")


grep("green", haystack)

grep("r", haystack) # returns position
grep("r", haystack, value = TRUE) # returns value
grepl("r", haystack) # returns boolean

sub("e", "+", haystack) # replaces pattern with replacement (once)
gsub("e", "+", haystack) # replaces pattern with replacement (global)
