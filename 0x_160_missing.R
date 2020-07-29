# missing

# here's a simple function
imaFunction <- function(dArg, eArg, zArg) {
  someVal <- dArg + eArg + zArg
  return(someVal)
}

imaFunction(dArg = 3, eArg = 4, zArg = 5)

# what happens if an argument is missing?
imaFunction(dArg = 3, eArg = 4)

# if it's just a simple missing value, you can set a default value
imaFunction <- function(dArg, eArg, zArg = 5) {
  someVal <- dArg + eArg + zArg
  return(someVal)
}

#...but what if a missing value requires sophisticated handling?
imaFunction <- function(dArg, eArg, zArg) {
  if (missing(zArg)) {
    # ... some special way of obtaining a value
    zArg <- as.integer(readline(prompt = "what value for zArg? "))
  }
  someVal <- dArg + eArg + zArg
  return(someVal)
}

# or change the behavior of the function entirely
imaFunction <- function(dArg, eArg, zArg) {
  if (missing(zArg)) {
    someVal <- dArg ^ eArg
  } else {
    someVal <- dArg + eArg + zArg
  }
  return(someVal)
}
