# gistr

# install.packages("gistr")
library(gistr)

# create and save a personal access token
# https://help.github.com/articles/creating-an-access-token-for-command-line-use
# save the token
Sys.setenv(GITHUB_PAT = "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")

# open a gist session
gist_auth()

# create a new gist
gist_create(paste0(getwd(),"/01_242_beta_gamma.R"),
            description = "beta and gamma with R")

# list gists (also: public, mineall, starred)
gists(what = "minepublic")

# add files to a gist 
myGists <- gists(what = "minepublic")[[1]]

myGists <- add_files(myGists, paste0(getwd(),"/01_241_choose.R"))

update(myGists)

