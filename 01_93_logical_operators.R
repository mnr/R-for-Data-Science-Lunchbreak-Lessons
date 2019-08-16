# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: logical operators

# common to a lot of languages, but worth reviewing

# ! is "not"
!TRUE # equals false
!"apple" # oops ... must be a logical value
!2 # abs(numbers) > 0 are TRUE
!0

# & is "and"
TRUE & TRUE # equals true
TRUE & FALSE # equals false

firstVectorFalse <- c(FALSE, TRUE)
firstVectorTrue <- c(TRUE, FALSE)

firstVectorFalse & firstVectorFalse
firstVectorFalse & firstVectorTrue

# | is "or"
TRUE | TRUE # equals true
TRUE | FALSE # equals true

firstVectorFalse | firstVectorTrue

# xor is "exclusive or" - EITHER this OR this
xor(TRUE, FALSE ) # true 
xor(FALSE, TRUE ) # true
xor(TRUE, TRUE ) # false
xor(FALSE, FALSE ) # false
