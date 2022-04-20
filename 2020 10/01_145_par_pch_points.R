# pch - lots of points

plot(1:10)


par("pch")
par(pch = 10)
plot(1:10)

# or...
plot(1:10, pch = 12)
plot(1:10, pch = 12, cex = 3)

# run the code from points to see a graphic
example("points")


