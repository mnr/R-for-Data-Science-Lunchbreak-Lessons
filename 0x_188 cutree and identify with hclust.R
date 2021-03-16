# cutree produces clusters from hclust objects
# identify interactively produces clusters from hclust objects

library(cluster)

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

cutree(hclust(dist(sampleQuakes)),k=2)

# agnes produces hclust objects, so hclust functions work
cutree(agnes(simpleQuakes), k=2)

# interactive cluster identification
plot(hclust(dist(sampleQuakes)),
     labels = c(LETTERS[1:length(sampleQuakes)])) # labeled points
returnedPoints <- identify(hclust(dist(sampleQuakes)), n=2, MAXCLUSTER = 3)
returnedPoints
