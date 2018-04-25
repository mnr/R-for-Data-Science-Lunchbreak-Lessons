# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for fun R packages

# main idea: Why so serious?


# Fortunes ----------------------------------------------------------------
install.packages("fortunes")
library(fortunes)
fortune()


# cowsay ------------------------------------------------------------------
install.packages("cowsay")
library(cowsay)
say("Why so serious?", by="cow")
names(animals)
say("futurama",by=sample(names(animals),1))


# fun ---------------------------------------------------------------------
# some games. Not well maintained.
install.packages("fun")
library(fun)
mine_sweeper()
gomoku()


# praise ------------------------------------------------------------------
install.packages("praise")
library(praise)
praise("${Exclamation}! ${rpackage}, ${adjective}")
?praise_parts #lists the template words

