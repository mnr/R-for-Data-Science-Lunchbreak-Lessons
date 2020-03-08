# message - create a diagnostic message

# see session 123 - print better

aLongString <- c("Twas Brillig and the slithey toves",
                 "Did gyre and gimble in the wabes",
                 "All mimsy were the borogoves",
                 "and the mome wraiths outgrabe")

# comparison of message, cat, and print

cat(aLongString)
print(aLongString)
message(aLongString)

# cat also...
cat(aLongString, file = "outputFile.txt") # write to a file
cat(aLongString, file = "outputFile.txt", append = True) # append to a file
cat(aLongString, sep = "!!!") # separator between vectors
cat(aLongString, labels = c("onesy::", "twosy::", "threesy::"), fill = TRUE)

# cat is similar to paste. These all produce the same thing
paste(aLongString, collapse = "!!!")
paste0(aLongString, collapse = "!!!")
cat(aLongString, sep = "!!!") # separator between vectors


# message also...
# sends to stderr
suppressMessages(message(aLongString)) # stderr is turned off
message(aLongString) #stderr is turned on
