# The tidyverse in 5 minutes

# The Tidyverse is a set of packages that enhance the R programming language
# with a unique workflow based on piping results through a set of filters.
# Everything that can be done with the Tidyverse can also be done with Base R,
# but many programmers find it easier to write and understand code using
# Tidyverse constructs

# for example, here's base R
myChickWeight <- ChickWeight
myChickWeight$randomNumber <- rnorm(nrow(myChickWeight))
myChickWeight$bucket <- cut(myChickWeight$randomNumber, breaks = 3, labels = c("low", "med", "high"))


# here's that same code, but written using the tidyverse package
install.packages("tidyverse")
library(tidyverse)

myChickWeight <- ChickWeight %>%
  add_column(randomNumber = rnorm(nrow(myChickWeight))) %>%
  mutate(bucket = cut_number(randomNumber, n = 3, labels = c("low", "med", "high")))

# notice the use of %>% - pipeline. Everything in tidyverse is written
#   so that data is always the first argument and flows through the pipes
# notice add_column and mutate. Similar to base R, but rewritten for tidyverse rules


# since the tidyverse is based on R, it's possible to combine base R with tidyverse commands
# for example...

myChickWeight <- ChickWeight %>%
  add_column(randomNumber = rnorm(nrow(myChickWeight)))

myChickWeight$bucket <- cut(myChickWeight$randomNumber, breaks = 3, labels = c("low", "med", "high"))


# 1) The Tidyverse makes it easy to add, move and delete statements 
# 2) Tidyverse isn't an immediate panacea to R. You still need to learn commands and how to
# use them. 
# 3) Tidyverse does clean up most of the conversions between data
# types expressed by functions.

# be sure to check out Charlie Joey Hadley's Learning the R Tidyverse in this library
