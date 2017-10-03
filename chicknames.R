# creates a data.frame with ranked names
# used by data.frame merge example
chicknames <-
structure(list(rank = 1:50, name = c("Sophia", "Emma", "Olivia", 
"Isabella", "Ava", "Mia", "Emily", "Abigail", "Madison", "Elizabeth", 
"Charlotte", "Avery", "Sofia", "Chloe", "Ella", "Harper", "Amelia", 
"Aubrey", "Addison", "Evelyn", "Natalie", "Grace", "Hannah", 
"Zoey", "Victoria", "Lillian", "Lily", "Brooklyn", "Samantha", 
"Layla", "Zoe", "Leah", "Audrey", "Allison", "Anna", "Savannah", 
"Aaliyah", "Gabriella", "Camila", "Aria", "Kaylee", "Scarlett", 
"Hailey", "Arianna", "Riley", "Alexis", "Nevaeh", "Sarah", "Claire", 
"Sadie")), .Names = c("rank", "name"), row.names = c(NA, 50L), class = "data.frame")

data("ChickWeight") # a built-in dataset
chick.one <- ChickWeight[ChickWeight$Chick == 1,]
chick.two <- ChickWeight[ChickWeight$Chick == 2,]
