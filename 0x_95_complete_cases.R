# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# complete.cases finds lines with missing data

# grab a copy of the FDA.gov Acronyms & Abbreviations
download.file(url = "https://www.fda.gov/media/71010/download", mode = "wb" , destfile = "Acronym.zip")
unzip("Acronym.zip")
Acronym_export <- read.delim("Acronym_export.txt", stringsAsFactors=FALSE)
Acronym_export$Definition <-  trimws(Acronym_export$Definition, which = "both")
Acronym_export$Acronym <-  trimws(Acronym_export$Acronym, which = "both")

# example of a complete case
Acronym_export[30,]

# example of incomplete case
Acronym_export[3612,] # missing all three variables
Acronym_export[3758,] # Has a definition, but it's a number?

# so - how to get rid of incomplete cases?
# use complete.cases
complete.cases(Acronym_export) # returns TRUE or FALSE
sum(complete.cases(Acronym_export)) #3809 complete cases
Acronym_export[complete.cases(Acronym_export), ] # returns only complete cases
Acronym_export[!complete.cases(Acronym_export), ] # returns only incomplete cases

