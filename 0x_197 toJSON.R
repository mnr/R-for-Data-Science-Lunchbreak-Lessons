# toJSON, write_json
# write R objects into JSON

#install.packages("jsonlite")
library(jsonlite)

cwjson <- toJSON(ChickWeight)
write_json(cwjson, path = "chickWeight.json")
