# example code for LinkedIn Learning Course: https://linkedin-learning.pxf.io/rweekly_ifelse
# Description: Example file for ifelse

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
