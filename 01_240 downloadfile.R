# download.file

url <- "https://i0.wp.com/niemannross.com/wp-content/uploads/2018/08/cropped-mnr-in-japan-smaller.jpg"
destfile <- "I_downloaded_this.jpg"

download.file(url, 
              destfile, 
              quiet = FALSE, 
              method = "auto",
              mode = "w",
              extra = getOption("download.file.extra")
              )

# see also curl::curl_download
library(curl)
curl_download(url, destfile, quiet = FALSE, 
              mode = "wb", handle = new_handle())


