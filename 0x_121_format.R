# Use format() to improve readability	R users create reports from their research
# and format provides a way to clean up number visualizations. With knowledge of
# format, R programmers will be able to reformat numbers for more attractive
# printing.

smalldf <- data.frame(floats = c(pi, 22/7, log(2), NA, sqrt(2), 100.000 ),
                      ints = 1:6,
                      somewordsarereallylong = c("apple","banana",NA,"pine", "orange", "cherry"),
                      stringsAsFactors = FALSE)

smalldf # for reference
format(smalldf, trim = TRUE)
format(smalldf, digits = 10) # number of float digits.
format(smalldf, digits = 3) # number of float digits.
format(smalldf, width = 15) # only numerics
# notice how this only applies to appropriate columns.
# character columns are untouched
format(smalldf, justify = "right") # default is left. also "centre" (english spelling)
format(smalldf, justify = "centre") # default is left. also "centre" (english spelling)
format(smalldf, justify = "left") # default is left. also "centre" (english spelling)
format(smalldf, na.encode = FALSE) # na in character vector is encoded.
format(smalldf, scientific = TRUE)

# things passed to prettyNum
format(smalldf, drop0trailing = TRUE)

