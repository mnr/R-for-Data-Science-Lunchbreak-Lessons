# and() determine if all conditions in a test are TRUE.

library(readxl)
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, sheet = "numbers"))

# R version uses & && for "and"
# | || for "or"
# double version (&& ||) is more efficient and preferred for if...then

# true and false
Spreadsheet[1,1] >3
Spreadsheet[1,6] > 3

# =AND(A1 > 3, F1 > 3) (False)
Spreadsheet[1,1] >3 & Spreadsheet[1,6] > 3

# R is good at testing multiple values in a range
Spreadsheet[1,] > 3
Spreadsheet[2,] > 3
Spreadsheet[1,] > 3 & Spreadsheet[2,] > 3 # test all elements
Spreadsheet[1,] > 3 && Spreadsheet[2,] > 3 # only test as far as necessary

# OR
Spreadsheet[1,] > 3 | Spreadsheet[2,] > 3 # only test as far as necessary
Spreadsheet[1,] > 3 || Spreadsheet[2,] > 3 # only test as far as necessary

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

AND(Spreadsheet[1,] > 3, Spreadsheet[2,] > 3)
OR(Spreadsheet[1,] > 3, Spreadsheet[2,] > 3)
