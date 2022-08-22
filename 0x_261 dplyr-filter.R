# install.packages("tidyverse")
library("tidyverse")

# filter() picks rows based on values.

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                nrow()

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
            filter(Jan > 0) %>%
            nrow()

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
            filter(Jan > 0 & Mar < 0) %>%
            nrow()
