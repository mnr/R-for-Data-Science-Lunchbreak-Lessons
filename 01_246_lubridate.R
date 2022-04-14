# lubridate

# lubridate is a popular third-party alternative to baseR date & time

install.packages("lubridate")
# install.packages("tidyverse") # will also install lubridate
library(lubridate)

?lubridate
# quick reference at https://lubridate.tidyverse.org/#cheatsheet

myDateTime <- ymd_hms("2022-03-23 11:23:14")
str(myDateTime)

mdy("March 3, 2022") # lubridate works hard with minimal guidance

# retrieve date/time parts
hour(myDateTime)
year(myDateTime)
wday(myDateTime, label = TRUE)


# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates