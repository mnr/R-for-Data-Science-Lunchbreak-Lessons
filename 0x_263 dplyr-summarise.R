# summarise() reduces multiple values down to a single summary.

# install.packages("tidyverse")
library("tidyverse")

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                summarise(meanJan = mean(Jan))

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                summarise(meanJan = mean(Jan),
                            maxMar = max(Mar))

# summarize operators
# Center: mean(), median()
# Spread: sd(), IQR(), mad()
# Range: min(), max(), quantile()
# Position: first(), last(), nth(),
# Count: n(), n_distinct()
# Logical: any(), all()

read.csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                        skip = 1) %>%
                summarise(sdJan = sd(Jan),
                            distinctMar = n_distinct(Mar),
                            n())
