# covid-19 data source

# citation: https://joss.theoj.org/papers/10.21105/joss.02376
# Covid-19 data hub at https://covid19datahub.io

install.packages("COVID19")
library(COVID19)

# all records
CovidData <- covid19() 

# download by country (country = )
# iso is the 3-letter ISO code of the country
# https://www.iso.org/obp/ui/#search
CovidData <- covid19(country = "USA")

# select granularity (level = )
# country-level data (level 1), 
# state-level data (level 2), 
# and city-level data (level 3)
CovidData <- covid19(country = "USA", level = 2)

# date range (start = and/or end = )
# Y-M-D
CovidData <- covid19(country = "USA", 
                     level = 2,
                     start = "2021-01-01",
                     end = Sys.Date()
                     )

# wb is short for world bank
# Use to specify data by indicators
# requires wbstats
install.packages("wbstats")
library(wbstats)
# Here's a list - https://data.worldbank.org/indicator?tab=all
# for example: https://data.worldbank.org/indicator/EG.ELC.ACCS.RU.ZS?view=chart
# plus: https://data.worldbank.org/indicator/AG.LND.AGRI.ZS?view=chart
wbIndicators <- c("electric" = "EG.ELC.ACCS.RU.ZS", "agl" = "AG.LND.AGRI.ZS")
CovidData <- covid19(wb = wbIndicators)

# gmr is short for Google Mobility Reports
# https://www.google.com/covid19/mobility/
# gmr = TRUE adds gmr to data set
CovidData <- covid19(country = "USA", 
                     level = 2,
                     start = "2021-01-01",
                     end = Sys.Date(),
                     gmr = TRUE
)

# amr is short for Apple Mobility Reports
# https://covid19.apple.com/mobility
# amr = TRUE adds amr to data set
CovidData <- covid19(country = "USA", 
                     level = 2,
                     start = "2021-01-01",
                     end = Sys.Date(),
                     amr = TRUE
)

