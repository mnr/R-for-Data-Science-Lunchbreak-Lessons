# Copyright Mark Niemann-Ross, 2019

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_chartr"
idx_video <- "chartr"
idx_task <- "strings"
idx_topics <- "chartr()" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: chartr, tolower, toupper, casefold

haystack <- c("red", "blue", "green", "blue", "green forest")

# chartr stands for _CHAR_acter _TR_anslate
chartr("ans","&_*",haystack)

# how is chartr different than sub and gsub?
# let's review sub and gsub
sub("e", "+", haystack) # replaces pattern with replacement (once)
gsub("e", "+", haystack) # replaces pattern with replacement (global)
chartr("e", "+", haystack) # behaves just like gsub

# chartr (not gsub) can translate more than one character without regex
gsub("ans","&_*",haystack) # no replacements
chartr("ans","&_*",haystack) # replacements

# letter case translation
chartr(paste(letters, collapse=""), paste(LETTERS, collapse=""), haystack)
#...or...
toupper(haystack)
tolower(haystack)
#...or...
casefold(haystack, upper = TRUE)
casefold(haystack, upper = FALSE)
