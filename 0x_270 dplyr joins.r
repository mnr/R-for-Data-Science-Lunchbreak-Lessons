# dplyr joins 

# install.packages("tidyverse")
library("tidyverse")

# there are four joins
# inner_join
# left_join
# right_join
# full_join

# create two dataframes of planet information
PlanetNames = c("Mercury", "Venus","Earth","Mars", "Jupiter", "Saturn", "Uranus","Neptune")
Planet_distance <- data.frame(names = PlanetNames,
                              PlanetDistance = c(57909175, 108208930,149597890, 
                                                 227936640, 778412010, 1426725400, 
                                                 2870972200, 4498252900 ))

Planet_density <- data.frame(names = PlanetNames,
                             PlanetDensity = c(5.43,5.24,5.52,3.940,1.33,0.70,1.30,1.76)) 
# make it more difficult than just a cbind...
Planet_density <- Planet_density[order(Planet_density$PlanetDensity),]
names(Planet_density) <- c("Planets","Density")

# demonstrate left join
Planet_distance %>%
  left_join(Planet_density,
            by = c("names" = "Planets"))
