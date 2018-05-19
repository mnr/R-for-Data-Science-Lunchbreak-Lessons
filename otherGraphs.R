# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Watch the video at https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/data-frames-rbind?trk=insiders_215756_learning
# Discuss at https://groups.google.com/d/forum/r-for-data-science-lunchbreak-lessons
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for Dataframes: rbind

# Main Idea: how to add rows to data.frames (or matrices)

barplot()
cdplot()
coplot()
dotchart()
fourfoldplot()
matplot()
mosaicplot()
pie()
spineplot()
stem()
stripchart()
sunflowerplot()

# Other types of charts
hist(mtcars$mpg)

pie(table(mtcars$cyl))
pie(table(mtcars$cyl),labels=c("Economy","Average","Muscle"))

# ggplot2 is a very popular package from the tidyverse
# https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf

# related to ggplot2, look at qplot
