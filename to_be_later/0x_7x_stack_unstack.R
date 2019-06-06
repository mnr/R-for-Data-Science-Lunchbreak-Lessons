# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 

talldata <- data.frame(deca = 1:10, 
                       alpha = letters[1:10],
                       month = factor(month.abb[1:10]),
                       stringsAsFactors = FALSE
)

stack(talldata)
stack(talldata, select = c(deca,alpha))
stack(talldata, form = deca + alpha ~ month )
