# apexcharts
# https://cran.r-project.org/package=apexcharter
# https://apexcharts.com

install.packages("apexcharter")
library(apexcharter)

# mapping ------
apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight))

apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight, 
                   fill = Diet))

apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight, 
                   fill = Diet,
                   group = Chick))

apex(data = ChickWeight, 
     mapping = aes(x = Time, y = Diet, z = weight, group = Chick),
     type = "scatter")

# type -------
apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight, 
                   group = Diet),
     type = "line")

apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight, 
                   group = Diet),
     type = "radar")

apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight, 
                   group = Diet),
     type = "treemap")

# "column", "bar", "line", "step", "spline", "area", "area-step", 
# "area-spline", "pie", "donut", "radialBar", "radar", "scatter", 
# "heatmap", "treemap", "timeline"

# downside - can't save to bitmap or pdf or svg
svg(filename = "apexout.svg")
apex(data = ChickWeight, 
     mapping = aes(x = Time, y = weight, 
                   group = Diet),
     type = "treemap")
dev.off()
# possible to create Rmarkdown, but requires shiny

