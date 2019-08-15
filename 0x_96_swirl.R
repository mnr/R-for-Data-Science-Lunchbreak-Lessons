# setup and use of swirl
# complete documentation at swirlstats.com
# source for the swirl project at https://github.com/mnr/swirl_lil.git

# 1) create a project

install.packages(c("swirl", "swirlify"))
library(swirlify)
library(swirl)

# directories are important - be careful about changing working directory!

# create a new lesson
# lesson name: Use R with Excel
# Course name: High Variety Data 

swirlify("Use R with Excel", "High Variety Data")

# which creates a directory and necessary files or ... opens existing lesson

# edit lesson.yaml: author and organization

# swirlify is an interactive tool for creating lessons - but not good for editing them.
# instead, use an editor

# to demonstrate your lesson, save, then...
demo_lesson()

# Folders are presented as lessons - do you want to control the order?
add_to_manifest()

# or...did you forget what you're working on?
get_current_lesson()
