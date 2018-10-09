# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: string matching

haystack <- c("red", "blue", "green", "blue", "green forest")

needle <- c("green", "blue", "cyan", "g")

match(needle, haystack) # first position, missing value = NA

needle %in% haystack # boolean

startsWith(haystack, "green")

endsWith(haystack, "green")

