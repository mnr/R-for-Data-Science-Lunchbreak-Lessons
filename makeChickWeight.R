# builds some data to experiment with

data("ChickWeight") # a built-in dataset
chick.one <- ChickWeight[ChickWeight$Chick == 1, ]
chick.two <- ChickWeight[ChickWeight$Chick == 2, ]

# creates a data.frame with ranked names
# used by data.frame merge example
chicknames <-
  structure(
    list(
      rank = 1:50,
      name = c(
        "Sophia",
        "Emma",
        "Olivia",
        "Isabella",
        "Ava",
        "Mia",
        "Emily",
        "Abigail",
        "Madison",
        "Elizabeth",
        "Charlotte",
        "Avery",
        "Sofia",
        "Chloe",
        "Sammy",
        "Harper",
        "Bryce",
        "Aubrey",
        "Addison",
        "Evelyn",
        "Andrew",
        "Stephen",
        "Hannah",
        "Zoey",
        "Daniel",
        "Lillian",
        "Dennis",
        "Brooklyn",
        "Samantha",
        "Todd",
        "Zoe",
        "Michael",
        "Audrey",
        "Allison",
        "Anna",
        "Savannah",
        "Aaliyah",
        "Gabriella",
        "Camila",
        "Aria",
        "Kaylee",
        "Scarlett",
        "Hailey",
        "Arianna",
        "Riley",
        "Peter",
        "Nevaeh",
        "Sarah",
        "Hulk",
        "Sadie"
      )
    ),
    .Names = c("rank", "name"),
    row.names = c(NA, 50L),
    class = "data.frame"
  )
