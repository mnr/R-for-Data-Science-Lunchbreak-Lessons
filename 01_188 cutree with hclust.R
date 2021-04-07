# cutree produces clusters from hclust objects
# identify interactively produces clusters from hclust objects

library(cluster)

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

plot(hclust(dist(simpleQuakes)))
     
# cluster by k
cutree(hclust(dist(simpleQuakes)),k=2)

# cluster by height
cutree(hclust(dist(simpleQuakes)),h=15)


# agnes produces hclust objects, so hclust functions work
cutree(agnes(simpleQuakes), k=2)

