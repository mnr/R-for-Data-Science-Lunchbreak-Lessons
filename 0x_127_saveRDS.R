


# Use saveRDS() and readRDS() to serialize objects	saveRDS and readRDS provide a
# way to store R objects in serial form. This provides R users with a way to
# widely share the internals of an R object.

saveRDS(aVector, file = "sample_saveRDS")
remove(aVector)

readRDS("sampleSave")

# load and save keep the object name 
# and load the object into the current environment.

aVector <- c(1:23)

save(aVector, file = "sample_save")
remove(aVector)

load(file = "sample_save")
