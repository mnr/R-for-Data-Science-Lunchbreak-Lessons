# understanding the silhouette graph
# cluster functions provide the silhouette graph
# measures the quality of the cluster
# A high average silhouette width indicates a good clustering

library(cluster)

simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

silhouette(pam(simpleQuakes, 3))
# returns assigned cluster, neighbor cluster, width from this point to neighboring cluster
# large sil_width is better cluster
# Observations with a large Si (almost 1) are very well clustered, 
# a small  (around 0) means that the observation lies between two clusters, 
# and observations with a negative  are probably placed in the wrong cluster.

summary(silhouette(pam(simpleQuakes, 3)))
# provides useful information
summary(silhouette(pam(quakes, 2))) # median width is indicator of quality related to k


#plotting
plot(pam(simpleQuakes,4), which.plots = 2) 
# notice negative value
# what is average silhouette width? (larger is better)

plot(pam(simpleQuakes,2), which.plots = 2) 
# now what is average?

# clusplot
plot(pam(simpleQuakes,4), which.plots = 1) 
plot(pam(simpleQuakes,2), which.plots = 1) 

# overplotting
plot(pam(quakes,2), which.plots = 2)
plot(clara(quakes,2), which.plots = 2) # clara does subsampling

