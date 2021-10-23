# count - the number of cells that contain numbers

# =COUNT(A1:F6) = 34 (because of two NA)

library(readxl)

# as.matrix ensures this is all one type - in this case, numeric
Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

length(Spreadsheet) # = 36 - but includes NA
is.na(Spreadsheet) #returns true/false on NA
!is.na(Spreadsheet) # inverts T/F
sum(!is.na(Spreadsheet)) # TRUE is = 1. sum(True, True, False) = 2
