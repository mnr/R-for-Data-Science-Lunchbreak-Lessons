# rsqliteadmin
# R based SQLite administration tool
# zero install

# using the sqlite database from chapter 5 of Database Clinic: SQLite
# included in example files

# notes:
# rsqliteadmin wants sqlite databases to end with "xxx.db" instead of "xxx.sqlite"

install.packages("rsqliteadmin")
library(rsqliteadmin)
run_rsqliteadmin("shakespeare.sqlite")

# navigate to directory with sqlite file - it opens
# can create triggers
