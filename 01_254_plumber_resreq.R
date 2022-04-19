# plumber request and response headers

library(plumber)

#* @apiTitle Show the value of a request
#* @apiDescription Provided as part of LinkedIn Learning: R for Data Science, lunchbreak lessons
#' @get /showRequest
showTheReq <- function(whatsThis, req) {
  cat(as.character(Sys.time()), "-",
      req$REQUEST_METHOD, req$PATH_INFO, "-",
      req$HTTP_USER_AGENT, "@", req$REMOTE_ADDR, "\n")
  return(req$argsQuery)
}

#* @apiTitle set the value of the response 
#* @apiDescription Provided as part of LinkedIn Learning: R for Data Science, lunchbreak lessons
#' @get /setResponse
setTheRes <- function(whatsThis, res) {
  res$status <- 401
  res$body <- "Not Much Here"
}

# http://127.0.0.1:5232/showReq?whatsThis=Something