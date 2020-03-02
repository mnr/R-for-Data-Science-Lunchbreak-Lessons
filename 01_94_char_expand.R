# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: char.expand
# affiliate: https://linkedin-learning.pxf.io/rweekly_charexpand

# char.expand does search and replace from a table

load("nasa.rds")

# check if this is a unique acronym
char.expand("Dec", nasa_abbreviations$Acronym) # yes
char.expand("SDT", nasa_abbreviations$Acronym) # no

# what if there are multiple options?
grep("^T", nasa_abbreviations$Acronym, value = TRUE) # check for strings start with Y
char.expand("TZ", nasa_abbreviations$Acronym) # no match
char.expand("TE", nasa_abbreviations$Acronym) # expands to TEU

# no match
char.expand("TEB", nasa_abbreviations$Acronym, nomatch = warning("oops")) # no match

# how to use...
nasa_abbreviations[ nasa_abbreviations$Acronym == "TEU", 1 ] # that works
# but what if acronmyn isn't complete?
nasa_abbreviations[ nasa_abbreviations$Acronym == "TE", 1 ] # not found
# instead...
nasa_abbreviations[ nasa_abbreviations$Acronym == char.expand("TE", nasa_abbreviations$Acronym), 1 ]


