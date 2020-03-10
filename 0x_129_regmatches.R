# Find and replace substrings with regmatches()	regmatches uses regular
# expressions to find and replace substrings of other strings. Text manipulation
# is a strong feature of the R language.

someText <- c("Twas brillig and the blithey toves .", "I bought 15 apples to the market.")

# regexpr shows information about the match
regexpr("b\\w+", someText)

# regmatches shows the result of the match
regmatches(someText, regexpr("b\\w+", someText))

# gregexpr
regmatches(someText, gregexpr("b\\w+", someText))

# regmatches can be used to replace matches
regmatches(someText, gregexpr("b\\w+", someText)) <- "ardvarks"

someText

# here's a trick - invert the find
regmatches(someText, gregexpr("b\\w+", someText), invert = TRUE) <- "ardvarks"

someText
