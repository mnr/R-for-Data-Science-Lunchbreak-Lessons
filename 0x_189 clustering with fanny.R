# clustering with fanny
# Fuzzy Analysis Clustering
# Partitioning method

library(cluster)

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

# create a fuzzy cluster with fanny
fuzCluster <- fanny(x = simpleQuakes, k = 3) 
fuzCluster

# this produces 4 parts: object, membership, fuzzyness, other components of object
fuzCluster$membership # percentage likelihood this point is part of this cluster. 
fuzCluster$coeff # A low value of Dunn's coefficient indicates a very fuzzy clustering, whereas a value close to 1 indicates a near-crisp clustering
fuzCluster$clustering # closest hard/crisp cluster

# also...
fuzCluster$k.crisp # crisp clusters. If less than original k, consider reducing memb.exp
fuzCluster$memb.exp # the membership exponent used in the fitting criterion
fuzCluster$objective

plot(fuzCluster, which.plots = 1) # clusplot
plot(fuzCluster, which.plots = 2) # silhouette

# understanding what these parts are
?fanny
?fanny.object # explains the returned values
