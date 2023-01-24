# dbplyr

# note: d "b" plyr instead of dplyr

# dbplyr is the database backend for dplyr. 
# It allows you to use remote database tables as if 
# they are in-memory data frames by 
# automatically converting dplyr code into SQL.

# install.packages("tidyverse")
library(tidyverse)

# Alternatively, install just dbplyr:
# install.packages("dbplyr")
# library(dplyr)

# library(dbplyr) isn't needed. 
# dplyr autoloads dbplyr when using sql tables

# first, load in sample SQLite table
library(RSQLite)
sqlcon <- dbConnect(RSQLite::SQLite(), dbname="Chinook_Sqlite.sqlite")

# check the SQL connection by displaying the "Invoice" table
tbl(sqlcon, "Invoice")

# create an R query
sqlValues <- tbl(sqlcon, "Invoice") %>% 
  filter(Total > 10) %>%
  collect() # collect shows the result

# what does the SQL look like?
sqlValues <- tbl(sqlcon, "Invoice") %>% 
  filter(Total > 10) %>%
  show_query()

# Some R values or functions may not translate to SQL
# Scroll through the following for examples
# https://dbplyr.tidyverse.org/articles/translation-function.html

