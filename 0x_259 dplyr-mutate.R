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
worldTemp$thing <- worldTemp$Jan * 2 

# base R with mutate
worldTemp <- mutate(worldTemp, thing2 = Jan * 2)

# mutate in tidyverse syntax
worldTemp <- worldTemp %>% 
  mutate(thing3 = Jan * 2)

# placement of column. Normally at end
# .before & .after
worldTemp <- worldTemp %>% 
  mutate(thing3 = Jan * 2, .before = 1)

worldTemp <- worldTemp %>% 
  mutate(thing4 = Jan * 2, .after = "Apr")

# transmutate is similar to mutate
# but creates new and drops old
worldTemp <- worldTemp %>% 
  transmute(Jan_2 = Jan * 2)
