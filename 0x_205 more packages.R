# old.packages, new.packages, and update.packages
# available.packages, contrib.url, remove.packages

# the most important tool of this set
update.packages() # offers to update old packages

# install.packages has several related commands
old.packages() # shows old packages in your system
new.packages() # lists packages you don't have

# lists information about packages you could have FOR THIS SYSTEM (version and OS)
available.packages() 
available.packages(filters = "OS_type")
available.packages(filters = "license/FOSS")
available.packages(filters = "license/restricts_use")

remove.packages("cowsay") # does what you expect
