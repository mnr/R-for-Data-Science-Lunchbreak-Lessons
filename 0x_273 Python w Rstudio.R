# https://support.posit.co/hc/en-us/articles/1500007929061-Using-Python-with-the-RStudio-IDE
# python with Rstudio

# install.packages("reticulate")
library(reticulate) # this connects RStudio to Python

# now you can run python scripts
# note that a REPL is opened in console
# look in tools::global options for python configuration

# create an object in R. This can be seen by python
myRObject <- c("This", "That", "The Other", "one more")

# note the R/Python selector in environment pane

