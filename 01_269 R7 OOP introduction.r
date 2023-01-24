# R7 OOP structures
# https://github.com/RConsortium/OOP-WG

install.packages("remotes")
remotes::install_github("rconsortium/OOP-WG")
library(R7)

# create a class
source("01_269 class planet.R")

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

