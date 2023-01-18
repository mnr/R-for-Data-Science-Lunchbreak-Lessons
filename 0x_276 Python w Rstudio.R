# https://support.posit.co/hc/en-us/articles/1500007929061-Using-Python-with-the-RStudio-IDE
# python with Rstudio

install.packages("reticulate")
library(reticulate)

# now you can run python scripts
# note that a REPL is opened in console

myRObject <- c("This", "That", "The Other")
