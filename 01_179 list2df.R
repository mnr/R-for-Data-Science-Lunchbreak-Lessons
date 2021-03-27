# list2DF() is new as of 4.0.3

a.list <- list(3,6,9,15,24) # contains 1,2,3,4,5
another.list <- list(TRUE,FALSE,TRUE)
I.am.a.list <- list(a.list,another.list)
str(I.am.a.list)


list2DF(I.am.a.list) # converts list to data.frame

list2DF(I.am.a.list, nrow = 4) # only produces 4 rows

list2DF(nrow = 5) # empty data frame of five rows
