# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Watch the video at https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/data-frames-rbind?trk=insiders_215756_learning
# Discuss at https://groups.google.com/d/forum/r-for-data-science-lunchbreak-lessons
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Look inside the code

# let's play with cowsay
install.packages("cowsay")
library(cowsay)
say("Why so serious?", by="cow")

# looking inside of the function
say # reveals code of function
ls("package:cowsay") # reveals objects inside of package
?cowsay::animals # help file for that object
str(animals) # STRucture of an object