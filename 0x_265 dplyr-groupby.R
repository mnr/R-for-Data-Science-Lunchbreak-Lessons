# These all combine naturally with group_by() 
# which allows you to perform any operation “by group”.

# install.packages("tidyverse")
library("tidyverse")

# without any grouping
read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                summarize(median(Jan))

# what if you want median for each century?
read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                group_by(trunc(Year/100)) %>%
                summarize(median(Jan))

