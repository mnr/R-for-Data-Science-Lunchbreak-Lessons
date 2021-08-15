# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Say something funny
# affiliate: https://linkedin-learning.pxf.io/rweekly_cowsay

# cowsay ------------------------------------------------------------------
install.packages("cowsay")
library(cowsay)
say("Why so serious?", by="cow")
names(animals)
say("futurama",by=sample(names(animals),1))
say("dexter",by=sample(names(animals),1))
# other wildcards: "arresteddevelopment", "doctorwho", "dexter", "futurama", "holygrail", "simpsons", "starwars", "loremipsum"
say("loremipsum",by=sample(names(animals),1))

