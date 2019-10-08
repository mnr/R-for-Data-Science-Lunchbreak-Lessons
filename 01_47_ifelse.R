# example code for LinkedIn Learning Course: https://linkedin-learning.pxf.io/rweekly_ifelse
# Description: Example file for ifelse

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_ifelse" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "ifelse()" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# for example
if (TRUE) {
  print("Leghorn")
} else {
  print("Orpington")
}

ifelse(TRUE, "Leghorn", "Orpington")
# or...
if (TRUE) "Leghorn" else "Orpington"

# if length(condition) > 1 ...
MNRChickenRanch <- c(1, 0, 0, 0, 1, 0, 0, 1, NA, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0)

ifelse(MNRChickenRanch, "Leghorn", "Orpington")

# The following fails because length(condition) == 1
if (MNRChickenRanch) "Leghorn" else "Orpington"


# extra credit. I built the random # in MNR Chicken Ranch with this
ifelse(runif(30) < .5, 0, 1)
# or...
sample(c(0,1),size = 30, replace = TRUE)
# or... look up coin flip...
