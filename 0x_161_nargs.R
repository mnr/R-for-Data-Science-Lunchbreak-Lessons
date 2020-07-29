# nargs()

# consider int main (int argc, char *argv[] )
# nargs is equivalent to argc
# list(...) is equivalent to char *argv[] (only for ... arguments)

# so...what good is nargs?

# use it to determine how many arguments are being passed in to the function
imaFunction <- function(dArg, ...) {
  print(paste("number of arguments: ",nargs()))
  dotArgs <- list(...) # misses dArg because that's not in the ...
  print(dotArgs)
}


imaFunction(dArg = 3, eArg = 4, zArg = 5)
imaFunction(dArg = 3, eArg = 4)
imaFunction(dArg = 3)
