# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: char.expand

# char.expand does search and replace from a table

# grab a copy of the FDA.gov Acronyms & Abbreviations
download.file(url = "https://www.fda.gov/media/71010/download", mode = "wb" , destfile = "Acronym.zip")
unzip("Acronym.zip")
Acronym_export <- read.delim("Acronym_export.txt", stringsAsFactors=FALSE)
Acronym_export <- Acronym_export[complete.cases(Acronym_export), ]
Acronym_export$Definition <-  trimws(Acronym_export$Definition, which = "both")
Acronym_export$Acronym <-  trimws(Acronym_export$Acronym, which = "both")

# check if this is a unique acronym
char.expand("TSO", Acronym_export$Acronym) # yes

# what if there are multiple options?
grep("^Y", Acronym_export$Acronym, value = TRUE) # check for strings start with Y
char.expand("YZ", Acronym_export$Acronym) # no match
char.expand("Y2", Acronym_export$Acronym) # expands to Y2K
char.expand("YT", Acronym_export$Acronym) # expands to YTD
char.expand("YTZ", Acronym_export$Acronym) # no match
char.expand("YTDa", Acronym_export$Acronym) # no match

# no match
char.expand("YTDa", Acronym_export$Acronym, nomatch = warning("oops")) # no match

# how to use...
Acronym_export[ Acronym_export$Acronym == "YTD", 1 ] # that works
# but what if acronmyn isn't complete?
Acronym_export[ Acronym_export$Acronym == "YT", 1 ] # not found
# instead...
Acronym_export[ Acronym_export$Acronym == char.expand("YT", Acronym_export$Acronym), 1 ]


