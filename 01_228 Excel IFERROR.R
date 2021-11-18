# iferror() trap and handle errors in a formula
# error types: #N/A, #VALUE!, #REF!, #DIV/0!, #NUM!, #NAME?, or #NULL!

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, 
                                        sheet = "numbers"))

# =IFERROR(SUM(A2:F2), "found an error") #finds NA
# R doesn't think NA (and others) is an error. need to explicitly check

testThis <- function(aRowOfSpreadsheet) {
  if (anyNA(aRowOfSpreadsheet)) {
    return("found an error")
  } else {
    sum(aRowOfSpreadsheet)
  }
}

testThis(Spreadsheet[2,] )

# test all rows
apply(Spreadsheet, 1, testThis)

