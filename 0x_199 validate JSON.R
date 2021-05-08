# validate JSON

# https://mars.nasa.gov/insight/weather/
# https://api.nasa.gov/assets/insight/InSight%20Weather%20API%20Documentation.pdf


#install.packages("jsonlite")
library(jsonlite)


someJSON <- '{
  "employees": {
    "employee": [
      {
        "id": "1",
        "firstName": "Tom",
        "lastName": "Cruise",
        "photo": "https://pbs.twimg.com/profile_images/735509975649378305/B81JwLT7.jpg"
      }
    ]
  }
}'

validate(someJSON)
# delete a chunk of code, then validate again

# attribute: offset is character count to error
# attribute: err is description of error

# how to validate files
download.file("https://api.nasa.gov/insight_weather/?api_key=DEMO_KEY&feedtype=json&ver=1.0", "nasaText.json")
marsWeather <- toJSON("nasaText.json")
validate(marsWeather)
