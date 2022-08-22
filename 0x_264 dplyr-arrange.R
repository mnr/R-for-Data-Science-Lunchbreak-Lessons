# arrange() changes the ordering of the rows.

# install.packages("tidyverse")
library("tidyverse")

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                arrange(Jan)
