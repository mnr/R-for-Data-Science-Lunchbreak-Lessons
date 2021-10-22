# Use LOOKUP when you need to look in a single row or column 
# ...and find a value from the same position in a second row or column.

# Use the XLOOKUP function to find things in a table or range by row. 
# For example, look up the price of an automotive part by the part number, 
# or find an employee name based on their employee ID. 
# With XLOOKUP, you can look in one column for a search term, 
# and return a result from the same row in another column, 
# regardless of which side the return column is on.


library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE))

# Example: Print contents of column B where contents of column A = 5
# =LOOKUP(5,A1:A6,B1:B6)
Spreadsheet[Spreadsheet[,1]==5, 2] 
# breaking this down...
Spreadsheet[,1] # is first column
Spreadsheet[,1]==5 # are values in first column equal to 5?
Spreadsheet[Spreadsheet[,1]==5, 2] # return values of column 2 if column 1 is true

# xlookup is just lookup but on an array instead of columns or rows
# =xlookup(5, lookup_array, return_array, 0)
lookup_array <- Spreadsheet[,1:3] # all rows, columns 1-3
return_array <- Spreadsheet[,4:6] # all rows, columns 4-6

return_array[lookup_array[] == 5] # =xlookup(5, lookup_array, return_array, 0)
lookup_array[,] == 5 # break it down. elements of lookup_array == 5
