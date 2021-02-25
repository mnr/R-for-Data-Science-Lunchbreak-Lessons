# Clustering with PAM
# PAM = Partitioning Around Medoids

# medoids are a type of centroid
# medoids are a member of the data set (centroids may not be)
# pronounced MED-oids

library(cluster)

# quick example and visual
simpleQuakes <- quakes[,c("long","lat")]
mypam <- pam(simpleQuakes,4)

# components of mypam - see pam.object
?pam.object
# for example...
mypam$medoids # coordinates of medoids
mypam$id.med # indices of medoids (i.e. simpleQuakes[mypam$id.med,])

mypam$clustering # which points belong to which medoid
# same as... pam(simpleQuakes, 4, cluster.only = TRUE)


# plotting PAM
plot(mypam) # steps through cluster plot and silhouette plot
# note: silhouette plot overplots - bars are too thin to show
# clara works better

plot(mypam, ask = TRUE) # menu for plots

plot(mypam, which.plots = 1) # uses first plot



# Presentation ENDS HERE

# experimenting with silhouette plot
plot(pam(quakes,2), which.plots = 2) # overplotting
plot(clara(quakes,2), which.plots = 2) # clara downsamples

install.packages("maps")
install.packages("mapdata")
library(maps)
library(mapdata)
map("worldHires","Fiji", xlim=c(160,190), ylim =c(-40,-15))
points(quakes$long, quakes$lat)


# PAM works by 
# 1) select "k" rows as test medoids
# 2) calculating distance(aka cost) between points in each row and each test medoid
# 3) for each row, select low cost and assign to a cluster based on medoid
# 4) sum resultant cost of each row
# 5) iterate through all selections of rows as test medoids (steps 1-4)
# 6) Select tightest cluster

# calculating distance/cost
simpQuakeCost <- simpleQuakes
# assume medoid is row 5
sqMedoid <- 5
# manhattan ... (X1 - X2) + (Y1 - Y2)
simpQuakeCost[,"Cost"] <- (simpleQuakes[,"lat"]-simpleQuakes[sqMedoid,"lat"]) + (simpleQuakes[,"long"]-simpleQuakes[sqMedoid,"long"]) 
head(simpQuakeCost)
