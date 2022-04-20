# Uses index_num to return a value from the list of value arguments. 

library(readxl)

# NOTE - imported as a matrix instead of data.frame
Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# =CHOOSE(5,A1,A2,A3,A4,A5,A6,B1) is 7
Spreadsheet[5] #this works because matrix instead of dataframe

# if imported as data.frame
Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet="numbers"))
# then can specify a range of vectors like choose
# =SUM(CHOOSE(3,A1:A6,B1:B6,C1:C6,D1:D6,E1:E6,F1:F6)) which equals 30 (=sum(c1:c6))

Spreadsheet[ , 3] # is all rows of third column
