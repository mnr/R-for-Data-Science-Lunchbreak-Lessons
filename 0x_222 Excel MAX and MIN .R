# max() Returns the largest value in a set of values.
# min() Returns the smallest value in a set of values.
# maxifs() Returns the maximum value among cells specified by conditions

# get spreadsheet
library(readxl)
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# =MAX(A1:F1)
max(Spreadsheet[1,])

# =MIN(A1:F1)
min(Spreadsheet[1,])

# =MAXIFS(A5:F5,A6:F6,4)
Spreadsheet[6,] # values for criteria
Spreadsheet[6,] == 4 # T/F for criteria
Spreadsheet[5,] # values
Spreadsheet[5,Spreadsheet[6,]==4] # all values criteria = 4
max(Spreadsheet[5,Spreadsheet[6,]==4]) # max value where criteria = 4

# =MAXIFS(A2:F2,A2:F2,">=0") # omit NA
max(Spreadsheet[2,], na.rm = TRUE) # max value omit NA
