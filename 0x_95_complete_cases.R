# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

# complete.cases finds lines with missing data
load("nasa.rds")

# example of a complete case
nasa_abbreviations[65,]

# example of incomplete case
nasa_abbreviations[66,] # missing definition
nasa_abbreviations[69,] # missing abbreviation

# so - how to get rid of incomplete cases?
# use complete.cases
complete.cases(nasa_abbreviations) # returns TRUE or FALSE
nrow(nasa_abbreviations) # 82 cases
sum(complete.cases(nasa_abbreviations)) #80 complete cases
nasa_abbreviations[complete.cases(nasa_abbreviations), ] # returns only complete cases
nasa_abbreviations[!complete.cases(nasa_abbreviations), ] # returns only incomplete cases

