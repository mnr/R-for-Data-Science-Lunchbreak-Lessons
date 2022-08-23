# tibble.tidyverse.org

# install.packages("tidyverse")
library(tidyverse)

# make examples for comparison

imaDataframe <- data.frame(
    months = month.abb,
    alpha = letters[1:12],
    things = 1:12,
    nothings = -1:-12
)
imaTibble <- as_tibble(imaDataframe)

# tibbles are like dataframes
imaDataframe
imaTibble

# enhanced print function...
# tibbles describe grid size and column types
# identify negative numbers

# tibbles complain about missing columns
imaDataframe$nothere
imaTibble$nothere

# most important, tibbles are the default tidyverse data.frame
# do not fear the tibble.
