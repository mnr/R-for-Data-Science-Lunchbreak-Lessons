# example file for https://linkedin-learning.pxf.io/rwkly_dataSets

affiliate <- "https://linkedin-learning.pxf.io/rwkly_dataSets"
video <- "r-built-in-data-sets"
topics <- "data()"
index_build(affiliate, video, topics)

# Description: Example file for datasets

# main idea: datasets are a convenient way to explore R language

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

# more from LinkedIn Learning - video from Barton Poulson's "R Statistics Essential Training"
browseURL("https://www.linkedin.com/learning/r-statistics-essential-training/using-built-in-datasets-in-r?trk=insiders_215756_learning")

# Other datasets
other.datasets <- c("https://www.kaggle.com", "http://data.gov", "http://www.census.gov", "http://data.gov.uk", "http://open.canada.ca/en", "https://ropensci.org")
browseURL(select.list(other.datasets,graphics=TRUE, title="other datasets"))
