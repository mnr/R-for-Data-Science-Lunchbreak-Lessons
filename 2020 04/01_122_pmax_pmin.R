# Use pmax() and pmin() to discover the scope of paired vectors.	R users will be
# able to compare two vectors, finding the maximum or minimum of each positional
# pair. Comparing data is an essential tool for all data science.

# simply...
pmin(1:5, 3)
pmax(1:5, 3)

# why?

# why - dealing with outliers

myoutlier <- c(1:10, 1000, 11:20)
plot(myoutlier, type = "l") # useless...

plot(pmin(myoutlier, 30), type = "l")

# what about characters and NLP

pmin(letters, "m")
pmin(c("twas", "brillig", "and"), "b")
pmax(c("twas", "brillig", "and"), "b")
pmax(c("twas", "brillig", "and"), "bob")

# dataframes?
mydf <- data.frame(someletters = letters,
                   somenumbers = 1:26,
                   stringsAsFactors = FALSE)

mydf # take a look

pmin(mydf, 15) # this is unpredictable

mydf$somenumbers <- pmin(mydf$somenumbers, 15) # this works


