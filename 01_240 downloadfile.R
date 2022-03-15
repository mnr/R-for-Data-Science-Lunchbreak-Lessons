# download.file
download.file(url, destfile, method, quiet = FALSE, mode = "w",
              cacheOK = TRUE,
              extra = getOption("download.file.extra"),
              headers = NULL, ...)


# see also curl::curl_download
curl_download(url, destfile, quiet = TRUE, 
              mode = "wb", handle = new_handle())
