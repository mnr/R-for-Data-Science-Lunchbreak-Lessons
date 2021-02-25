# clustering: hclust

# Hierarchical method
# builds a dendogram

# included in base R package. Provides basic Hierarchical Clustering

# what is a distance matrix? (distance between points)
sampleQuakes <- quakes[sample(1:length(quakes$lat), 5),] # demonstrate a small set
sampleQuakes # here's the data
dist(sampleQuakes) # here's the distance matrix

# now here's a hierarchical cluster
hclust(dist(quakes)) # returns an hclust object

plot(hclust(dist(quakes))) # overplot
plot(hclust(dist(sampleQuakes))) # more approachable
# starts with one cluster per element
# Progressing up dendrogram produces larger clusters until one cluster at top
# Labels are row numbers. 
plot(hclust(dist(sampleQuakes)),
     labels = c(LETTERS[1:length(sampleQuakes)])) # labeled points

