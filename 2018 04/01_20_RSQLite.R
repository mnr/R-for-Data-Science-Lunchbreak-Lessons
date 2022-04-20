# Example files for LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_rsqlite
# Description: Example file for RSQLite

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_rsqlite" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("RSQLite", "dbConnect()", "dbWriteTable()", "dbGetQuery()", "dbReadTable()", "dbDisconnect()")
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# main idea: Use SQLite to store/buffer data. it's persistent and uses SQL

# Set up SQLIte -----------------------------------------------------------

# import necessary libraries
install.packages(c("DBI","RSQLite"))

# SQLite support
library(DBI)
library(RSQLite)

putSQLiteHere <- "myRsqlite.sqlite" # could also be ":memory:"
mySQLiteDB <- dbConnect(RSQLite::SQLite(),putSQLiteHere)

# Load data into SQLite Database -----------------------------------------------------------
data("ChickWeight") # need some data to play with
dbWriteTable(conn=mySQLiteDB,name="SQLChickWeight",value=data.frame(ChickWeight))
# Conn = connection to database
# name = name of table to create
# value is a data.frame

# Use SQL with the database ---------------------------------------------
doThisSQL <- "select Chick, weight from SQLChickWeight where weight > 100"
dbGetQuery(mySQLiteDB,doThisSQL)

# All datasets are loaded with RSQLite ------------------------------------
sqldatasets <- RSQLite::datasetsDb()
dbReadTable(sqldatasets,"ChickWeight")
dbGetQuery(sqldatasets,"select Chick, weight from ChickWeight where weight > 100")

# additional code support -------------------------------------------------
RSQLite::initExtension(mySQLiteDB)

# adds: acos, acosh, asin, asinh, atan, atan2, atanh, atn2, ceil, cos, cosh,
# cot, coth, degrees, difference, exp, floor, log, log10, pi, power, radians,
# sign, sin, sinh, sqrt, square, tan, tanh, charindex, leftstr, ltrim, padc,
# padl, padr, proper, replace, replicate, reverse, rightstr, rtrim, strfilter,
# trim, stdev, variance, mode, median, lower_quartile, upper_quartile

doThisSQL <- "select Chick, median(weight) 
from SQLChickWeight 
group by Chick 
order by cast(Chick as int)"
dbGetQuery(mySQLiteDB,doThisSQL)

dbDisconnect(mySQLiteDB)


# documentation -----------------------------------------------------------
browseURL("https://cran.r-project.org/web/packages/RSQLite/RSQLite.pdf")
