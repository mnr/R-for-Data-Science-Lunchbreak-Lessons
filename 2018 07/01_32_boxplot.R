# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Watch the video at https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/data-frames-rbind?trk=insiders_215756_learning
# Discuss at https://groups.google.com/d/forum/r-for-data-science-lunchbreak-lessons
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: base graphics: boxplot
# affiliate: https://linkedin-learning.pxf.io/rweekly_boxplot

boxplot(mtcars$mpg)
boxplot(mpg ~ cyl, data = mtcars, col = "lightgray", varwidth = TRUE, 
        main = "mpg vs cylinders",
        ylab = "mpg",xlab = "cylinders")
fivenum(mtcars$mpg) # the numbers used to create the boxplot

