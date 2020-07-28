# on.exit()
# use for reliable cleanup when exiting a function - even if the function crashes

divideMe <- function(a,b) {
  on.exit( expr = print("Do something Useful"))
  print(a/b)
  }

divideMe(3,4)

divideMe <- function(a,b) {
  on.exit( expr = print("Do something Useful"))
  print(a/b)
  sys.on.exit() # what is queued up in on.exit?
}

divideMe <- function(a,b) {
  on.exit( expr = print("Do something Useful"))
  print(a/b)
  on.exit(print("something more"), add = TRUE) # add something
}

divideMe <- function(a,b) {
  on.exit( expr = print("Do something Useful"))
  print(a/b)
  on.exit() # reset
}

