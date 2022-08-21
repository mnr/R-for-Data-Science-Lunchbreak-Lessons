# https://dplyr.tidyverse.org

# a package for data manipulation
# part of the tidyverse

# provides several functions
# mutate() adds new variables that are functions of existing variables
# select() picks variables based on their names.
# filter() picks cases based on their values.
# summarise() reduces multiple values down to a single summary.
# arrange() changes the ordering of the rows.
# These all combine naturally with group_by() which allows you to perform any operation “by group”.

# for example...
worldTemp <- read_csv("https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv", 
                      skip = 1,
                      col_types = "nnnnnnnnnnnnnnnnnnn",
                      na = "***") %>% 
  select(c("Year", month.abb)) %>% 
  filter(Jan > 0) %>%
  rowwise() %>% 
  mutate(medianTemp = median(c_across())) %>% 
  arrange(medianTemp)

worldTemp