# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for data frame read and update

# create a data.frame
I.am.a.vector <- c(1,2,3,4,5,6)
I.am.also.a.vector <- c("twas","brillig","and","the","slithey","toves")
many.months <- month.abb[1:6]

I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.also.a.vector,many.months)

# address variables, rows and cells ------------------------------------------
# values of variables (columns)
I.am.a.dataframe$many.months # contents of a variable (column)
I.am.a.dataframe[3]

# values of observations (rows)
I.am.a.dataframe[2,] # notice the comma
I.am.a.dataframe[2,3] # 2nd row, 3rd column
I.am.a.dataframe[1:3,2] # 1st, 2nd, 3rd row - 2nd column

# Create Variables --------------------------------------------------------
I.am.a.dataframe$CAPITAL.LETTERS <- c(LETTERS[11:16])
I.am.a.dataframe$numberwocky <- paste(I.am.a.dataframe$I.am.a.vector,I.am.a.dataframe$I.am.also.a.vector)

# Delete Variables --------------------------------------------------------
I.am.a.dataframe$CAPITAL.LETTERS <- NULL

# Change Value of Variables -----------------------------------------------
I.am.a.dataframe$I.am.a.vector <- ifelse(I.am.a.dataframe$I.am.a.vector > 3,"Larger","Smaller")

# You may have heard of attach() as a way of making dataframe references easier. DON'T DO IT!
# instead, use with()
I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.also.a.vector,many.months) # rebuild data.frame
I.am.a.dataframe$I.am.a.vector <- with(I.am.a.dataframe, ifelse(I.am.a.vector > 3,"Larger","Smaller"))
