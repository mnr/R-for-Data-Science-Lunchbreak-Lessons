# Clustering: kmeans
# Partitioning method

?kmeans

# kmeans clusters data together, based on average distance from a centroid
# kmeans iterates through possible solutions to identify the best result

kmeans(quakes, 3)

# lots of information in the print from kmeans
# cluster sizes
# cl$centers - cluster means - shows the centroid for each cluster
# cl$cluster - clustering vector - shows which data points belong to which cluster
# cl$withinss - within cluster sum of squares - small SofS = more compact cluster


cl <- kmeans(quakes, 3)
plot(quakes, col = cl$cluster)
# what are we looking at.

#simplify
simpleQuakes <- quakes[,c("long","lat")]
cl <- kmeans(simpleQuakes, 4)
plot(simpleQuakes, col = cl$cluster)
