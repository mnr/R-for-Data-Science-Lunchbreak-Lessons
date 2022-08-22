# slice and friends 

# slice()
# slice_head() and slice_tail() select the first or last rows.
# slice_sample() randomly selects rows.
# slice_min() and slice_max() select rows with highest or lowest values of a variable.


# install.packages("tidyverse")
library("tidyverse")

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                slice(c(3,5,7))

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                slice_head(n=6)

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                slice_sample(n=6)

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                slice_max(Mar)
