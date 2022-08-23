# select() picks variables based on their names.

# install.packages("tidyverse")
library("tidyverse")

# download a data set
worldTemp <- read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1)
head(worldTemp) # just to take a look at the columns

worldTemp <- worldTemp %>%
  select(c(month.abb)) 

# use ":" to select start:end range
worldTemp <- read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
    skip = 1) %>%
    select("Mar":"May")

# use ":" to select start:end range
worldTemp <- read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
    skip = 1) %>%
    select(starts_with("M"))

worldTemp <- read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
    skip = 1) %>%
    select(where(is.numeric))
