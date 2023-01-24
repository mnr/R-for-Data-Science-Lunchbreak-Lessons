# R7 OOP structures
# https://github.com/RConsortium/OOP-WG
# https://rconsortium.github.io/OOP-WG/articles/R7.html
# properties

# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

source("01_269 class planet.R")

# property classes
Mars <- planet(name = "Mars",
               distance_au = 34, # distance_au doesn't work
               specialDay = as.Date("2023-01-05") 
               )

Mars <- planet(name = "Mars",
               distance_au = 1.52366231,
               specialDay = as.Date("2023-01-05") # Now it does
              )
