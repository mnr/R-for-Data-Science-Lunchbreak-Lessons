# counta() - counts the number of cells that are not empty in a range.
# The COUNTA function counts cells containing any type of information, 
#     including error values and empty text ("")

library(readxl)
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                          col_names = FALSE, sheet = "numbers"))

# =COUNTA(D1:D7) is 6. 1 column, 7 rows, 1 blank, 1 NA

# the problem: R doesn't have "empty" cells. 
Spreadsheet[ 1:7 , 4] # R equivalent of D1:D7. 
# missing values = NA

# empty cells can be NA, "" (empty string)
Spreadsheet[7,] <- c(NA_character_,"",NaN, NULL) # Null doesn't show up
length(Spreadsheet[7,])

is.na(Spreadsheet[7,])
is.null(Spreadsheet[7,])

# complete cases tests for "missing values" in each row
# testing numbers page
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))
Spreadsheet
complete.cases(Spreadsheet)
# testing text page
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "text"))
Spreadsheet
complete.cases(Spreadsheet)


