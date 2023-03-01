# crayon
# https://www.r-pkg.org/pkg/crayon

# install.packages("crayon")
library(crayon)

cat(strikethrough("Hello") )
# also bold, blurred, italic, underline, inverse, hidden, strikethrough

# use cat instead of print. cat does less conversion than print

cat(magenta("Hello"))
# also black, red, green, yellow, blue, magenta, cyan, white, silver

cat(bgRed("Hello"))
# also bgBlack, bgRed, bgGreen, bgYellow, bgBlue, bgMagenta, bgCyan, bgWhite

# crayon provides %+% - a substitute to paste()
cat("Twas " %+% cyan("brillig ") %+% "and the " %+% bgYellow("slithey toves"))

# styles can be concatenated with $
cat("Twas " %+% bgYellow$bold$cyan("brillig") %+% " and the toves")

# and define your own styles
loud <- bgYellow $ bold $ cyan
cat("Twas " %+% loud("brillig") %+% " and the toves")

