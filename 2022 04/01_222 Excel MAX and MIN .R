# max() Returns the largest value in a set of values.
# min() Returns the smallest value in a set of values.
# maxifs() Returns the maximum value among cells specified by conditions

# get spreadsheet
library(readxl)
Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, sheet = "numbers"))

# =MAX(A1:F1)
max(Spreadsheet[1,])

# =MIN(A1:F1)
min(Spreadsheet[1,])

# =MAXIFS(A6:F6,A1:F1,2)
Spreadsheet[6,] # value range
Spreadsheet[1,] # criteria range
Spreadsheet[1,] == 2 # T/F for criteria
Spreadsheet[6,Spreadsheet[1,]==2] # all values criteria = 2
max(Spreadsheet[6,Spreadsheet[1,]==2]) # max value where criteria = 2

# =MAXIFS(A2:F2,A2:F2,">=0") # omit NA
max(Spreadsheet[2,], na.rm = TRUE) # max value omit NA

