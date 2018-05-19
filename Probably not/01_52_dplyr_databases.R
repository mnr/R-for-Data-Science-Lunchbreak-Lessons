# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for dplyr:database access

# main idea: accessing databases using dplyr

from r-bloggers:Database Queries With R

Use the same syntax for R and database objects
No knowledge of SQL required
Code is standard across SQL variants
Lazy evaluation

  
  Query using dplyr syntax

You can write your code in dplyr syntax, and dplyr will translate your code into SQL. There are several benefits to writing queries in dplyr syntax: you can keep the same consistent language both for R objects and database tables, no knowledge of SQL or the specific SQL variant is required, and you can take advantage of the fact that dplyr uses lazy evaluation. dplyr syntax is easy to read, but you can always inspect the SQL translation with the show_query() function.

q1 <- tbl(con, "bank") %>%
  group_by(month_idx, year, month) %>%
  summarise(
    subscribe = sum(ifelse(term_deposit == "yes", 1, 0)),
    total = n())
show_query(q1)

SELECT "month_idx", "year", "month", SUM(CASE WHEN ("term_deposit" = 'yes') THEN (1.0) ELSE (0.0) END) AS "subscribe", COUNT(*) AS "total"
FROM ("bank") 
GROUP BY "month_idx", "year", "month"