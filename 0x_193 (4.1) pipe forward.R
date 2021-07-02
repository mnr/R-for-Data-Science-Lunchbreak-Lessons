# New pipeline in R 4.1
# pipe-forward ... |>

# https://michaelbarrowman.co.uk/post/the-new-base-pipe/
# https://www.r-bloggers.com/2021/05/the-new-r-pipe/

# the pipe command used to be %>%. Part of magrittr
# See earlier R weekly for discussion on pipeline
# also installed as part of tidyverse
install.packages("magrittr")
library(magrittr)

myvar <- c(1:100)

# base R
intermediateVar <- fivenum(myvar)
barplot(intermediateVar)

# with magrittr
myvar %>% 
  fivenum %>% 
  barplot
# note that () are optional, unless you need to specify other parameters

# with new pipeline symbol in 4.1
# first...error...
myvar |>
  fivenum |>
  barplot

# pipe operator requires a function call as RHS
myvar |>
  fivenum() |>
  barplot()

# note: |> does not require additional library. It's built-in and slightly faster
# note: R studio may complain about this new symbol. Update is coming
# note: |> assumes passed argument is first variable. May have to declare function to move the x

