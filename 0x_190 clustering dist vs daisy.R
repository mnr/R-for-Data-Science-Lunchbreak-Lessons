# clustering with daisy
# vs dist

# daisy - dissimilarity on multiple data types
# Dissimilarity Matrix Calculation
# returns a dissimilarity.object

# dist - dissimilarity on numeric variables
# Distance Matrix Computation
# returns a dist object

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),5),]

library(cluster)

# all values are numeric, so these return the same values
daisy(simpleQuakes)
dist(simpleQuakes)

# but...add a binary TRUE/FALSE column
binaryVector <- sample(c(FALSE,TRUE), nrow(simpleQuakes), replace = TRUE) 
mixedSimpQuake <- cbind(simpleQuakes, binaryVector)

# now there are significant differences
daisy(mixedSimpQuake) # includes TF column in calculation
dist(mixedSimpQuake) # ignores the TF column, same values as above

# more on dissimilarity.object
# metric is mixed. See object definition for $Types
#      I is interval scaled (numeric)
#      A is Asymmetric binary

# daisy can be used in place of dist
plot(hclust(dist(mixedSimpQuake)))
plot(hclust(daisy(mixedSimpQuake)))

plot(agnes(daisy(mixedSimpQuake)), which.plots = 2)
