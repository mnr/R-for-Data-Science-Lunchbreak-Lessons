# R7 OOP structures
# https://github.com/RConsortium/OOP-WG
# https://rconsortium.github.io/OOP-WG/articles/R7.html
# classes and properties


# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

# demonstration of:
# base_classes
# new_property
source("01_271 class planet.R")

# how it works
Mars = planet(name = "Mars",
              distance_au = 1.52366231,
              specialDay = "2023-01-05") # date doesn't work

Mars = planet(
  name = "Mars",
  distance_au = 1.52366231,
  specialDay = as.Date("2023-01-05")
) # Now it does

# getter/setter
Mars@timeNow
# set a getter/setter
Mars@timeNow <- Sys.time()
Mars

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
