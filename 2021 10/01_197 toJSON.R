# toJSON, write_json
# write R objects into JSON

#install.packages("jsonlite")
library(jsonlite)

# convert object to JSON string
toJSON(ChickWeight)
toJSON(ChickWeight, dataframe = "values") # vs rows. Or columns
toJSON(ChickWeight, pretty = TRUE) # nice formatting
toJSON(ChickWeight, pretty = TRUE, dataframe = "columns") # nice formatting


# write json to a file on disk
cwjson <- toJSON(ChickWeight)
write_json(cwjson, path = "chickWeight.json")
