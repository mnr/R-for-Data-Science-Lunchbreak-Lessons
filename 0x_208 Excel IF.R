# The IF function allows you to make logical comparisons 
# between a value and what you expect.

# R equivalent is if...then...else
library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet="numbers"))

#=IF(A1>1,"This is greater than one")
if(Spreadsheet[1,1] > 1) { 
  print("This is greater than one")
  }
  
# =IF(A1>1,"This is greater than one","This is less than or equal to one")
if(Spreadsheet[1,1] > 1) { 
  print("This is greater than one")
} else {print("This is less than or equal to one")}
# hint - Spreadsheet [3,6] == 1

ltgt1 <- function(rowOfValues) {
  for (aValue in rowOfValues) {
    if (is.na(aValue)) {
      print("This is NA")
    }
    else if (aValue > 1) {
      print(paste(aValue, "is greater than one"))
    } else {
      print(paste(aValue, " is less than or equal to one"))
    }
  }
}

# equivalent of if() for each cell in spreadsheet
apply(Spreadsheet, MARGIN = 2 ,FUN=ltgt1 )
