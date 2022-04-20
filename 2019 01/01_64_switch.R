# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: switch
# affiliate: https://linkedin-learning.pxf.io/rweekly_switch

# Switch is a way to create multiple actions to decisions

# Consider if...then...else

testme <- 3
if (testme == 3) {
  print("Action #1")
} else if (testme == 5) {
  print("Action #2")
} else if (testme == 7) {
  print("Action #3")
}

# instead, switch might be clearer

# if test is numeric, switch returns a value based on the test
# test value out of range returns NULL
switch (3,
        "Action #1",
        "Action #2",
        "Action #3",
        "Action #4",
        "Action #5",
        "Action #6",
        "Action #7"
)


# switch on a string?
switch("mango",
       "apple" = "red",
       "banana" = "yellow",
       "mango" = 15)

manyFruits <- c("mango", "apple") # EXPR must be a length 1 vector
switch(manyFruits,
       "apple" = "red",
       "banana" = "yellow",
       "mango" = 15)

