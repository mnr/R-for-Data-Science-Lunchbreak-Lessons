# use rtoot to access mastodon

# install.packages("rtoot")
library(rtoot)


# authenticate to a mastodon server
auth_setup()

# a list of federations
myfederations <- get_instance_general(instance = "mastodon.social")
