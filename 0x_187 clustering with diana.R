# clustering with diana
# Hierarchical method
# divisive. Starts with one cluster and breaks it down
# vs agglomerative
# Divisive is more efficient and accurate - perhaps

library(cluster)

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

diana(simpleQuakes)

plot(diana(simpleQuakes), which.plots = 2)

# what is going on?
?diana
?diana.object
