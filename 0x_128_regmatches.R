# Find and replace substrings with regmatches()	regmatches uses regular
# expressions to find and replace substrings of other strings. Text manipulation
# is a strong feature of the R language.

someText <- "Twas brillig and the slithey toves bought 15 apples to the market."

regmatches(someText, gregexpr("b\\w+", someText))
