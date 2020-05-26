# learnr - https://rstudio.github.io/learnr/

# learnr is a tool for creating R lessons
# similar to swirl - which we discussed earlier
# but easier - based on Rmd (r markdown) 
# runs under shiny. 
# See Creating interactive presentations with shiny and R
# author: Charlie Joey Hadley

install.packages("learnr")

# create a new document
# file::new file::R markdown::from template::interactive tutorial

# lines 3 & 4 of the new file indicate this is a learnr document
output: learnr::tutorial
runtime: shiny_prerendered

# look at top of code window - run document...

# for new exercise, {r, exercise=TRUE}