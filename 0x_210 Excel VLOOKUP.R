# VLOOKUP - find things in a table or a range by row. 
# for example... =VLOOKUP(5,A1:B6,2) = 8

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE))

# vlookup is easy in R
Spreadsheet[Spreadsheet[,1] == 5,2]

# break it down...
Spreadsheet[ ,1] # is the first column
Spreadsheet[ ,1] == 5 # which values in column 1 are equal to 5?
Spreadsheet[ Spreadsheet[ ,1] == 5, 2 ] # return the value of column 2 where row 1 is equal to five
