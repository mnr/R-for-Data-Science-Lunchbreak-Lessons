# dbplyr

# note: d "b" plyr instead of dplyr

# dbplyr is the database backend for dplyr. 
# It allows you to use remote database tables as if 
# they are in-memory data frames by 
# automatically converting dplyr code into SQL.

# install.packages("tidyverse")
# Alternatively, install just dbplyr:
# install.packages("dbplyr")

library(dplyr)

# library(dbplyr) isn't needed. dplyr autoloads dbplyr when
# using sql tables

library(RSQLite)
sqlcon <- dbConnect(RSQLite::SQLite(), dbname="Chinook_Sqlite.sqlite")

show_query()

