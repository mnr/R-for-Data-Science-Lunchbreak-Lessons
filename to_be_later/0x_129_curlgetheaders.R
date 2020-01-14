# Use curlgetheaders() to retrieve web page metadata	With curlgetheaders, R
# programs can retrieve information about web pages and web data. Use of web
# metadata helps data scientists wrangle and reshape data from the internet.

mystatus <- curlGetHeaders("niemannross.com")
attr(mystatus, "status") # status is the return value of connection. 

curlGetHeaders("niemannross.com/link/stupidmachine")
curlGetHeaders("niemannross.com/link/stupidmachine", redirect = FALSE)

# watch out for errors
mystatus <- curlGetHeaders("ftps://niemannross.com/not_here.txt")

# instead

checkCURL <-  function(openthisurl) {
  mystatus <- NULL
  mystatus <- curlGetHeaders(openthisurl)
  if (attr(mystatus, "status") == 200) {
    return(TRUE)
    } else {return(FALSE)}
}

checkCURL("niemannross.com")
checkCURL("ftps://niemannross.com/not_here.txt")
