# Import JSON to R
# fromJSON, read_json, parse_json,

#install.packages("jsonlite")
library(jsonlite)

# fromJSON ----------------------------------------------------------------
# import from string, URL, or local file

# create a list from JSON
# here's a test URL: 
nasaURL <- "https://api.nasa.gov/insight_weather/?api_key=DEMO_KEY&feedtype=json&ver=1.0"

# then here's the R object - a list
nasaData <- fromJSON(nasaURL)

# read_json ---------------------------------------------------------------
# similar to fromJSON but only for local file
# make a local file for demonstration
write_json(nasaData, path = "nasaData.json")
rm(nasaData)
# show nasaData.json

# now demonstrate how to convert a json disk file to an R object
newNasaData <- read_json("nasaData.json")


# parse_json --------------------------------------------------------------
# similar to fromJSON but only for json string
jsonFromString <- parse_json('[ {"q":"What kills the creative force is not age or lack of talent, but our own spirit, our own attitude.",
                             "a":"Robert Greene",
                             "h":"<blockquote>&ldquo;What kills the creative force is not age or lack of talent, but our own spirit, our own attitude.&rdquo; &mdash; <footer>Robert Greene</footer></blockquote>"} ]')


# stream_in ---------------------------------------------------------------
# similar to fromJSON but only for a connection (serial port or keyboard)
# requires ndjson - http://ndjson.org/


