# dplyr pull

# Pull is similar to $ addressing but looks nicer in pipes

# install.packages("tidyverse")
library("tidyverse")

# download a data set
worldTemp <- read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                      skip = 1)
head(worldTemp) # just to take a look at the columns

# $ addressing is awkward when used in pipes
worldTemp %>% .$Jan
# instead
worldTemp %>%
  pull(Jan)

# and...you can name the vector with another column
worldTemp %>%
  slice(1:10) %>%
  pull(Jan, name = Year)

# the base R equivalent would be...
myWT <- worldTemp[1:10, "Jan"]
names(myWT) <- worldTemp[1:10, "Year"]
myWT
