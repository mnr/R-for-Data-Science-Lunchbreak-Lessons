library(cluster)

# downsample quakes for demonstration. from 500 to 25
simpleQuakes <- quakes[sample(nrow(quakes),25),c("long","lat")]

agnes(simpleQuakes)

plot(agnes(simpleQuakes), which.plots = 1) # banner plot
plot(agnes(simpleQuakes), which.plots = 2) # dendogram

# methods provided by agnes
plot(agnes(simpleQuakes, method = "average"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "single"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "complete"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "ward"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "weighted"), which.plots = 2) 
plot(agnes(simpleQuakes, method = "flexible", par.method = 4), which.plots = 2) 

# identify also works
plot(agnes(simpleQuakes), which.plots = 2) # dendogram
clustResults <- identify(as.hclust(agnes(simpleQuakes)))
clustResults

# documentation
?agnes
?agnes.object
