# jsonStrings - package for strings in json format

install.packages("jsonStrings")
library(jsonStrings)

# download JSON (see fromJSON in lunchbreak lessons)
download.file("https://api.nasa.gov/insight_weather/?api_key=DEMO_KEY&feedtype=json&ver=1.0", "nasaText.json")

