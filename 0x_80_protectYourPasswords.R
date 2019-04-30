# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: don't include your password in R

# Store unencrypted password
file.edit(file.path("~", ".Renviron"))

# in .Renviron, put key="value"...
# R_myPassword="something Secret"

Sys.getenv("R_myPassword") # retrieve it

# or ... keyring
# askForSecret - keychain on MacOS, credential store on windows
# linux requires libsecret library

install.packages("keyring")
library(keyring)

key_set("SecretRecipie")
key_get("SecretRecipie")

# or...if you're using RStudio
library(rstudioapi)

askForSecret("mySecretValue") # click on keyring checkbox
# subsequent askForSecret will autofill the answer
# unclick the keyring checkbox to remove it


# or...Store your passwords on an encrypted disk or removable drive
# create a file on external drive
# or on cloud storage such as onedrive, google drive or dropbox
# the file contains password definitions. 
# such as ... mySecretPassword <- "Waldorf salad"
# Warning: this will show up in a list of environmental variables
source("mysecrets.r")

# more sophisticated: secrets package at https://github.com/gaborcsardi/secret

