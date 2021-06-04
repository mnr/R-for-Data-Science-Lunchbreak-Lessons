# serializeJSON, unserializeJSON

#install.packages("jsonlite")
library(jsonlite)

cwjson <- toJSON(ChickWeight)
serializeJSON(cwjson)
