# left(), right()
# LEFT (RIGHT) returns the first (last) character or characters in a text string, 
#    based on the number of characters you specify.

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, 
                                        sheet = "text"))

substr(Spreadsheet[1,5], 0, 3 )
substr(Spreadsheet[1,5], nchar(Spreadsheet[1,5]) - 2, nchar(Spreadsheet[1,5]) )


# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

LEFT(Spreadsheet[1,5], 3)
RIGHT(Spreadsheet[1,5],3)
