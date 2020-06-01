# legend

# make a plot for experimentation
newGraph <- function() {
  plot(1:10,
       col = "Red",
       type = "b",
       lwd = 3,
       pch = 3)
  lines(10:1, col = "Green", lwd = 1, pch = 10, type = "b")
  lines(sample(1:10, 10), col = "Blue", lwd = 3, type = "b", pch = 20)
}

newGraph()

# position ----------------------
# x can be combination of (top or bottom or neither) + (left or right or neither) 
# x = "bottomright"
# position can also be x/y of top left corner in plot coordinates
# x = 3, y = 5
# position can be pair of x/y - bottom left, top right
# x = c(3,7), y = c(5,10)

# points ------------------
# pch = c(3,10,20)

# color of points
# col = c("red","green", "blue")

# fill -------------
# place colored boxes in legend
# fill = c("red","green", "blue")

# columns -------------
#ncol = 3
# ...or...
# horiz = TRUE

newGraph()
legend(x = "bottom",
       title = "This is a legend",
       legend = c("Positive Slope","Negative Slope", "Random"),
       pch = c(3,10,20),
       horiz = TRUE,
       fill = c("red","green", "blue")
       )
