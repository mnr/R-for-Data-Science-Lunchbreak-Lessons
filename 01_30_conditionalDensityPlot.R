# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Watch the video at https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/data-frames-rbind?trk=insiders_215756_learning
# Discuss at https://groups.google.com/d/forum/r-for-data-science-lunchbreak-lessons
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: conditional density plot

# create some data to work with
data("ChickWeight")

# given a certain amount of time, how much should a chick weigh?

# because conditional density plots require a factor
ThreeWeights <- cut(ChickWeight$weight, 3, labels = c(34, 148, 260))

cdplot(ChickWeight$Time, ThreeWeights)

cdplot(ChickWeight$Time, ThreeWeights,
       main = "How much should a chick weigh?",
       ylab = "Probable Weight",
       xlab = "Days"
)

cdplot(factor(weight) ~ Time, data = ChickWeight)

cdplot(factor(cut(weight, 6, labels = 1:6 * 62)) ~ Time, 
       data = ChickWeight,
       main = "How much should a chick weigh?",
       ylab = "Weight",
       xlab = "Days"
       )
