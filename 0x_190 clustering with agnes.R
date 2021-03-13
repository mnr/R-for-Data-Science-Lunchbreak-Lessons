# clustering with agnes - Agglomerative Nesting
# Hierarchical method
# like hclust but includes agglomerative coefficient & banner
# agglomerative means start with clusers of n=1, then increase n

# agnes produces hclust objects, so works with hclust functions
# sometimes requires as.hclust()

# unlike hclust, agnes doesn't require dist()

library(cluster)

agnes(quakes)

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

plot(agnes(simpleQuakes), which.plots = 1) # banner plot
plot(agnes(simpleQuakes), which.plots = 2) # dendogram

# methods provided by agnes
plot(agnes(simpleQuakes, method = "average"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "single"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "complete"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "ward"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "weighted"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "flexible", par.method = 4), which.plots = 2) 

# agnes produces hclust objects, so hclust functions work
cutree(agnes(simpleQuakes), k=2)

# identify also works
plot(agnes(simpleQuakes), which.plots = 2) # dendogram
clustResults <- identify(as.hclust(agnes(simpleQuakes)))
clustResults

# documentation
?agnes
?agnes.object
