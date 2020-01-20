# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Tabulation
# affiliate: https://linkedin-learning.pxf.io/rweekly_table

table(ChickWeight$Diet)

table(ChickWeight$Diet,  dnn = "Observations per diet")

with(ChickWeight, table(weight, Diet,
                        dnn = c("cweight", "cDiet"))
)
