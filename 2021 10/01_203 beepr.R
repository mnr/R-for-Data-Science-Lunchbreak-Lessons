install.packages("beepr")
library(beepr)

beep()

for (asound in c("ping", "coin", "fanfare", "complete", "treasure", "ready", "shotgun", "mario", "wilhelm", "facebook", "sword")) {
  beep(asound)
  print(asound)
  Sys.sleep(5)
}

# beep can also play an http wav. NOT an https wav, mpg, etc

