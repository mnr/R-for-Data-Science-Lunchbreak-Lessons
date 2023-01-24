# R7 OOP structures
# https://github.com/RConsortium/OOP-WG
# https://rconsortium.github.io/OOP-WG/articles/R7.html
# base classes for inheritance

# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

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
