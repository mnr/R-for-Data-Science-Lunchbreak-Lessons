# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Watch the video at https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/data-frames-rbind?trk=insiders_215756_learning
# Discuss at https://groups.google.com/d/forum/r-for-data-science-lunchbreak-lessons
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: base graphics - pie charts

# create some data to work with
source("makeChickWeight.R")

pie(table(chicks_names$Diet))

pie(table(chicks_names$Diet),labels = c("horsebean","linseed","soybean", "sunflower"))

pie(table(chicks_names$Diet),
    labels = c("horsebean","linseed","soybean", "sunflower"),
    density = 10*1:3,
    angle = 100*1:3)

