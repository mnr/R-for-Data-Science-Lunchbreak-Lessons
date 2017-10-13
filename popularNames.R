# creates a data.frame with ranked names
# used by data.frame merge example
popularNames <-
structure(list(rank = 1:50, name = c("Noah", "Emma", "Liam", 
"Isabella", "Mason", "Mia", "Jacob", "Abigail", "William", "Elizabeth", 
"Ethan", "Avery", "James", "Chloe", "Alexander", "Harper", "Michael", 
"Aubrey", "Benjamin", "Evelyn", "Elijah", "Grace", "Daniel", 
"Zoey", "Aiden", "Lillian", "Logan", "Brooklyn", "Matthew", 
"Lucas", "Zoe", "Jackson", "Audrey", "David", "Anna", "Oliver", 
"Aaliyah", "Joseph", "Camila", "Gabriel", "Kaylee", "Samuel", 
"Hailey", "Carter", "Riley", "Anthony", "Nevaeh", "John", "Claire", 
"Dylan")), .Names = c("rank", "name"), row.names = c(NA, 50L), class = "data.frame")

data("ChickWeight") # a built-in dataset
chick.one <- ChickWeight[ChickWeight$Chick == 1,]
chick.two <- ChickWeight[ChickWeight$Chick == 2,]
