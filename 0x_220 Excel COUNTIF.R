# countif Counts the number of cells within a range 
# that meet the given criteria
# =COUNTIF(Where do you want to look?, What do you want to look for?)

library(readxl)

Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  
                          col_names = FALSE, sheet = "text"))

# =COUNTIF(A1:G4,"b*") # count words that begin with b
# think "range" and "criteria"
# range = Spreadsheet or a subset of spreadsheet
# criteria = how to select (create true/false table)
sum(startsWith(Spreadsheet,"b"), na.rm = TRUE)

# break it apart
startsWith(Spreadsheet,"b")

# what words start with b?
Spreadsheet[startsWith(Spreadsheet,"b")]


