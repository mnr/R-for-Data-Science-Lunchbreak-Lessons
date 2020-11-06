# bootstrap library
# Resampling methods in R: the boot package https://cran.r-project.org/doc/Rnews/Rnews_2002-3.pdf

# part of the recommended packages
installed.packages(priority = "recommended")

library(boot) #boot is installed, but still need library

# first - let's simulate some data gathering
populationOfErewhonOregon <- 50000 # households in Erehwon, Oregon
actualBlerbsPerHouse <- sample(1:100, populationOfErewhonOregon, replace = TRUE) # Actual Population
sampleSize <- (populationOfErewhonOregon/1000) # 0.1% of total population
surveyResults <- actualBlerbsPerHouse[1:sampleSize] 

# we could generate a statistic on the Total population
median(actualBlerbsPerHouse)

# but what if we don't have a complete representation of the population
# aka surveyResults

# Sample, then statistic.
median(sample(surveyResults, 10, replace = TRUE))
median(sample(surveyResults, 10, replace = TRUE))
median(sample(surveyResults, 10, replace = TRUE))
# each iteration produces a different result.
# adding iterations approaches the complete population...
# but...we don't know the standard deviation of each estimate 
# (aka standard error) of the result.

# first - create a version of the statistic
# data: this will be a complete data set
# indice: this will be a vector. 
#    length(indice) = ncols(data)
#    data[indice] is the data to be used for this iteration
myMedian <- function(data, indice) {
  median(data[indice])
}

# boot iterates "R" times...
# each iteration feeds the function identified in "statistic"...
#    ...with data and an indice
# boot returns a "boot" object

newBootObject <- boot(data = surveyResults, 
                       statistic = myMedian, 
                       R = 1000)
newBootObject # original= $t0, std. error = sd(newBootObject$t)
newBootObject$t
plot(newBootObject)
boot.array(newBootObject) # frequency of each value in data (i.e. surveyResults)
boot.ci(newBootObject) # calculate confidence intervals
