# regexpr and regexec


someText <- c("Twas brillig and the blithey toves .", "I bought 15 apples to the market.")

# regexpr identifies a match with regular expression
# b\\w+ finds words starting with b

hereIsTheMatch <- regexpr("b\\w+", someText)

hereIsTheMatch 
# note there is only one match
# start position, length of match, type of match, usebytes (vs use char)
# question: what happened to "blithey"

# for that, we need gregexpr

# add "g" to regexpr
hereIsTheMatch <- gregexpr("b\\w+", someText)

hereIsTheMatch # now it's a list. Each list element corresponds to element in vector

# 
# depending on how well you understand regular expressions, regexec lists groups
# each element of the list shows position of the match
# ...then position of sub matches
# t([ho].) means... find "t" followed by "h" or "o" and include any one letter following the match
hereIsTheMatch <- regexec("t([ho].)", someText)

hereIsTheMatch

# but what actually matched? Next week...regmatches

