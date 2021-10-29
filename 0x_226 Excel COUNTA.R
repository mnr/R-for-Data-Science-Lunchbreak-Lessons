# counta() - counts the number of cells that are not empty in a range.
# The COUNTA function counts cells containing any type of information, 
#     including error values and empty text ("")

library(readxl)
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# =COUNTA(D1:D7) is 6. 7 rows, 1 blank, 1 NA
Spreadsheet[ 1:7 , 4] # R equivalent of D1:D7. missing values = NA

# the problem: R doesn't have "empty" cells. 

### THINKING
nrow(Spreadsheet) # 6 rows (btw, rows also = observations)
ncol(Spreadsheet) # 6 columns (btw, columns also = variables)

Spreadsheet[ 1:7 , 4] # equivalent of D1:D7. missing values = NA
Spreadsheet[ 3, 4] <- ""
length(Spreadsheet[ 1:7 , 4] ) # = 7
is.na(Spreadsheet[ 1:7 , 4] ) # = 7
