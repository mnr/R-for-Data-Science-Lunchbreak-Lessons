# library()
# sum returns the sum of all arguments

# the R equivalent is sum()

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE))

sum(Spreadsheet[1,]) # =sum(A1:F1)
sum(Spreadsheet[,1]) # =SUM(A1:A6)

# what about NA?
sum(Spreadsheet) #=SUM(A1:F6)
sum(Spreadsheet, na.rm = TRUE) #=SUMIF(A1:F6,"<>#N/A")

# R has a selection of related SUM functions
rowsum(Spreadsheet, group = c("FirstRow","EvenRow","OddRow","EvenRow","OddRow","LastRow"))
rowSums(Spreadsheet) # drag-copy G1 down. G1=SUM(A1:F1), G2=SUM(A2:F2)...
colSums(Spreadsheet) # drag-copy A7 across. A7 =SUM(A1:A6)
colSums(Spreadsheet, na.rm = TRUE) # drag-copy A7 across. A7 = =SUMIF(A2:A7, "<>#N/A")
