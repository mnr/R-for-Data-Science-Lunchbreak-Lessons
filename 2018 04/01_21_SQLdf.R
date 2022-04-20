# link to LinkedIn Lesson: https://linkedin-learning.pxf.io/rweekly_sqldf
# Description: Example file for SQLdf

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_sqldf" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "sqldf" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# main idea: crossover between R data.frames and SQL

# get some data to play with
data("ChickWeight")


# Set up SQLdf -----------------------------------------------------------

# import necessary libraries
install.packages("sqldf")

library(sqldf)

# let's say:
# I wanted the median weight of all chicks
# ... AND I know SQL

# sqldf allows us to run an SQL call against a data.frame 
sqldf("Select Chick, median(weight) 
      from ChickWeight 
      group by Chick 
      order by cast(Chick as int)")

# documentation -----------------------------------------------------------
browseURL("https://cran.r-project.org/web/packages/RSQLite/RSQLite.pdf")
