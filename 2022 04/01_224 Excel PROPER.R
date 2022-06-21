# proper Capitalizes the first letter in a text string 
# and any other letters in text that follow any character other than a letter. 
# Converts all other letters to lowercase letters.

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, sheet = "text"))

# =PROPER(A1)

# base R has toupper and tolower, but not toproper
toupper(Spreadsheet[1,1])
tolower(Spreadsheet[1,1])
# instead, use stringi
#install.packages("stringi")
library(stringi)

stri_trans_totitle(Spreadsheet[1,1])

paste(Spreadsheet[1,], collapse = " ")

stri_trans_totitle(paste(Spreadsheet[1,], collapse = " "))
stri_trans_totitle(paste(Spreadsheet[1,], collapse = " "), type = "sentence")

# or use regex
gsub("(?<=\\b)([a-z])", "\\U\\1", tolower(Spreadsheet[1,]), perl=TRUE)

