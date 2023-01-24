# R7 OOP Generics and methods
# create methods 

# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

# First - create a class ----
source("01_269 class planet.R")

# second - create a generic method ----
changeDistance <- new_generic(name = "changeDistance",
                      dispatch_args = "aRandomName")

# third - create methods for different classes ----
method(changeDistance, planet) <- function(aRandomName) {
  aRandomName@distance_au <- aRandomName@distance_au * 2
  aRandomName
}

# fourth - create an instance ----
Mars = planet(name = "Mars",
              distance_au = 1.52366231)

# finally - use the method ----
changeDistance(Mars)

# what is changeDistance defined for?
changeDistance
