# R7 OOP structures
# https://github.com/RConsortium/OOP-WG
# https://rconsortium.github.io/OOP-WG/articles/R7.html
# properties

# install.packages("remotes")
# remotes::install_github("rconsortium/OOP-WG")
library(R7)

source("01_269 class planet.R")

Mars <- planet(name = "Mars",
               distance_au = 1.52366231,
               specialDay = as.Date("2023-01-05")
              )

# getter/setter
Mars@timeNow
# set a getter/setter
Mars@timeNow <- Sys.time()
Mars
