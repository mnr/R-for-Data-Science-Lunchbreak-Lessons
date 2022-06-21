# https://dplyr.tidyverse.org

# mutate() adds new variables that are functions of existing variables

# install.packages("tidyverse")
library("tidyverse")

# download a data set
worldTemp <- read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1)
head(worldTemp) # just to take a look at the columns

# create a column named "thing" equal to twice January temperature

# base R syntax
newWorldTemp$thing <- worldTemp$Jan * 2 

# base R with mutate
newWorldTemp <- mutate(worldTemp, thing = Jan * 2)

# mutate in tidyverse syntax
newWorldTemp <- worldTemp %>% 
  mutate(thing = Jan * 2)
