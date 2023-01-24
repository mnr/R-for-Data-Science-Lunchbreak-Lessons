# animate your plots with anim.plots

# install.packages("anim.plots")
library(anim.plots)

# simplify data
splitChicks <- split(x = ChickWeight, f = ChickWeight$Chick)

# normal plot -------
plot(x = splitChicks[["1"]]$Time,
     y = splitChicks[["1"]]$weight)

# with animation
anim.plot(x = splitChicks[["1"]]$Time,
          y = splitChicks[["1"]]$weight)

# "window" adds points -------
anim.plot(
  x = splitChicks[["1"]]$Time,
  y = splitChicks[["1"]]$weight,
  main = paste("Weight:", splitChicks[["1"]]$weight),
  window = 1:t
)

# add lines
plot(x = splitChicks[["1"]]$Time,
     y = splitChicks[["1"]]$weight
     )
for (thisChick in 2:4) {
  anim.lines(x = splitChicks[[thisChick]]$Time,
             y = splitChicks[[thisChick]]$weight,
             lty = thisChick,
             window = 1:t,
             speed = 3)
} 

# other animations
for (thisChick in 2:4) {
  anim.arrowplot(x0 = splitChicks[[thisChick]]$Time,
             y0 = splitChicks[[thisChick]]$weight,
             window = 1:t,
             speed = 3)
} 

# be sure to look at documentation for MORE plot types and parameters