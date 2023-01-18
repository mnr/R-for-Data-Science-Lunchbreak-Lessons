# R7 OOP structures
# https://github.com/RConsortium/OOP-WG
# methods with functional OOP


# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

planet = new_class(
  name = "planet",
  properties = list(name = class_character,
                    distance_au = class_numeric)
)

Mars = planet(
  name = "Mars",
  distance_au = 1.52366231
)

# original print as defined for planet
print(Mars)

# new print method
method(planet, print) <- function(x) {
  print(paste("Three times the AU of",x@name, "is", x@distance_au * 3))
}

print(Mars)

# brand new method for planets
method(planet, brandNewMethod) <- function(x) {
  plot(x = 1:10, y = 10:1)
}

