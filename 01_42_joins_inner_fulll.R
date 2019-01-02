# Link to LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_innerfull
# Description: Example file for joins

# Need some data to play with
df1 <- data.frame(LETTERS, dfindex = 1:26)
df2 <- data.frame(letters, dfindex = c(1:10,15,20,22:35))

# INNER JOIN: returns rows when there is a match in both tables.
merge(df1, df2)

# FULL (outer) JOIN: all records from both the tables and fill in NULLs for missing matches on either side.
merge(df1,df2, all=TRUE)


# what if column names don't match?
names(df1) <- c("alpha", "lotsaNumbers")

merge(df1, df2, by.x = "lotsaNumbers", by.y = "dfindex")
 
