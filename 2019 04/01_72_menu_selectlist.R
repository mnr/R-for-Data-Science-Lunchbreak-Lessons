# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: provide a selection menu
# affiliate: https://linkedin-learning.pxf.io/rweekly_menu

# Select from a list of options
# Don't use this in a batch or non-interactive session

myChoices <- c("Up", "Down", "Left", "Right")

menu(myChoices)

menu(myChoices, title = "Go in this direction...")

menu(myChoices, graphics = TRUE) # careful - this might not work on your system

# use menu with switch
switch(menu(myChoices),
       "go North",
       "go South",
       "go West",
       "go East")


# More complex menus with select.list -------------------------------------

# the graphics option may cause a crash or may not allow multiple selection

select.list(myChoices,
            preselect = myChoices[2],
            multiple = TRUE,
            graphics = TRUE
            )

# non-mac systems can use... graphics = getOption("menu.graphics")
