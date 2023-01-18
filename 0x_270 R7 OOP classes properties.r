# R7 OOP structures
# https://github.com/RConsortium/OOP-WG
# classes and properties


# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

# demonstration of:
# base_classes
# new_property
planet = new_class(
  name = "planet",
  properties = list(
    name = class_character,
    distance_au = class_numeric,
    specialDay = class_Date, # use class_date
    timeNow = new_property( # updated at access
      getter = function(self) # getter is dynamic
        Sys.time()
    )
  ),
  validator = function(self) {
    if (self@distance_au > 31) {
      "@distance_au is farther than Neptune"
    } else if (self@distance_au < .3) {
      "@distance_au is less than Mercury"
    }
  }
)

# how it works
Mars = planet(name = "Mars",
              distance_au = 1.52366231,
              specialDay = "2023-01-05") # date doesn't work

Mars = planet(
  name = "Mars",
  distance_au = 1.52366231,
  specialDay = as.Date("2023-01-05")
) # Now it does

Mars@timeNow

# Create a class from a parent class
baseClass <- new_class(
  name = "baseClass",
  properties = list(bcName = class_character,
                    aValue = class_numeric),
  abstract = TRUE
)

# since this is an abstract, it can't be used to create an object
mybc <- baseClass(bcName = "myname", aValue = 15) 

upClass <- new_class(
  name = "upClass",
  parent = baseClass,
  properties = list(
    anotherValue = class_numeric
    )
)

newUpClass <- upClass(anotherValue = 3, bcName = "bob", aValue = 15)
newUpClass
