# The MATCH function searches for a specified item in a range of cells, 
# and then returns the relative position of that item in the range. 

# For example, if the range A1:A3 contains the values 5, 25, and 38, 
# then the formula =MATCH(25,A1:A3,0) returns the number 2, 
# because 25 is the second item in the range.

# =MATCH(5,A1:F6) produces an Err:504 because MATCH is looking for a range of cells.
# =MATCH(5,A1:A6) produces 4

library(readxl)

# if imported as a matrix, then R's match() works as expected
Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  
                                    col_names = FALSE, sheet = "numbers"))

match(5,Spreadsheet)

# or...
5 %in% Spreadsheet # true/false

which(Spreadsheet == 5) # produces index of all matches


# if imported as data.frame, match gets upset
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, 
                                        sheet = "numbers"))

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

MATCH(5, Spreadsheet[1,])
MATCH(5, Spreadsheet) # produces first match
