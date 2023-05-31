# use rtoot to access mastodon

# install.packages("rtoot")
library(rtoot)

# authenticate to a mastodon server
auth_setup(instance = "mastodon.social", type = "public")

# get list of federated instances

myMastodonSocialToken <- "get a token from https://instances.social/api/token"

fedis <- get_fedi_instances(n = 130,
                            token = myMastodonSocialToken)

# looking to do some textmining? 
publictoots <- get_timeline_public(limit = 13,
                                   instance = "mastodon.social")
linkedinHashtags <- get_timeline_hashtag(hashtag = "linkedin", 
                     instance = "mastodon.social")
