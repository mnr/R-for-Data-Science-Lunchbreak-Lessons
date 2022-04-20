# Description: Example file for Dataframes: order and merge

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_sortmerge" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "data.frame" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("order", "merge", "sort") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)


# main idea: sorting and merging data.frames

# Need a dataframe to play with
data("ChickWeight") # a built-in dataset

# data.frames: order -------------------------------------------------------
ChickWeight$weight # produces unsorted list of "weight" values
sort(ChickWeight$weight) # sorts a vector
order(ChickWeight$weight) # What is this? answer: sorted row numbers - not values
ChickWeight[196,] #lists the observation with the smallest weight
ChickWeight[order(ChickWeight$weight),] # comma because [ row - comma - column ]

# data.frames: merge -------------------------------------------------------
# first, create two data.frames
chick.one <- ChickWeight[ChickWeight$Chick == 1,]
chick.two <- ChickWeight[ChickWeight$Chick == 2,]

# merge is like an SQL join - think horizontal combination
# let's compare the weight gain of chick one vs chick two
match.time.obs <- merge(chick.one,chick.two,by="Time")

# another example. Add names to the chicks using "by"
source("popularNames.R") # builds a data.frame with ranked names
chicks_names <- merge(ChickWeight,popularNames) # oops! merge is confused, so does an sql join all
chicks_names <- merge(ChickWeight,popularNames,by.x="Chick",by.y = "rank")
