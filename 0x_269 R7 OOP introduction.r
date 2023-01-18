# R7 OOP structures
# https://github.com/RConsortium/OOP-WG

install.packages("remotes")
remotes::install_github("rconsortium/OOP-WG")
library(R7)

# create a class
planet = new_class(
  name = "planet",
  properties = list(name = class_character,
                    distance_au = class_numeric),
  validator = function(self) {
    if (self@distance_au > 31) {
      "@distance_au is farther than Neptune"
    } else if (self@distance_au < .3) {
      "@distance_au is less than Mercury"
    }
  }
)

# Create an instance
Mars = planet(name = "Mars",
              distance_au = 1.52366231)

Mars

# access properties
Mars@distance_au

# Types and Values are validated
Mercury = planet(name = 5) # nope
Mercury = planet(distance_au = "2440.53") # nope
Mercury = planet(distance_au = 35)
