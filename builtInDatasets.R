# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for datasets

# documentation of datasets
library(help="datasets")

#How to use base R datasets
?data
data() # list all data sets
data(mtcars) # load a data set
help(mtcars) # learn about the data set
head(mtcars) # lines from start of data set

# use datasets to demonstrate and play with functions
plot(mtcars$hp,mtcars$mpg)

# built-in constants
LETTERS
letters
month.abb
month.name
pi

# more from LinkedIn Learning
browseURL(https://www.linkedin.com/learning/r-statistics-essential-training/using-built-in-datasets-in-r?trk=insiders_215756_learning)

# Other datasets
# https://www.kaggle.com
# http://data.gov  
# http://www.census.gov
# http://data.gov.uk
# http://open.canada.ca/en
# https://ropensci.org
