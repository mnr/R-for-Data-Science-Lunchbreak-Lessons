# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for joins

# Need some data to play with
df1 <- data.frame(LETTERS, dfindex = 1:26)
df2 <- data.frame(letters, dfindex = c(1:10,15,20,22:35))

# INNER JOIN: returns rows when there is a match in both tables.
merge(df1, df2)

# LEFT (outer) JOIN: returns all rows from the left table, even if there are no matches in the right table.
merge(df1, df2, all.x=TRUE)

# RIGHT (outer) JOIN: returns all rows from the right table, even if there are no matches in the left table.
merge(df1,df2, all.y=TRUE)

# FULL (outer) JOIN: all records from both the tables and fill in NULLs for missing matches on either side.
merge(df1,df2, all=TRUE)


# what if column names don't match?
names(df1) <- c("alpha", "lotsaNumbers")

merge(df1, df2, by.x = "lotsaNumbers", by.y = "dfindex")
 