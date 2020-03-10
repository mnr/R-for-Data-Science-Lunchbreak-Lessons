# exists - look for an r object

# test if an object exists in the current environment

if(exists("DefinedVector")) {
  # avoid repeating long and expensive routine
  print("It's already defined!")
} else {
  print("It's NOT defined")
  # go ahead and do the expensive routine
}

DefinedVector <- "Here I am!"
