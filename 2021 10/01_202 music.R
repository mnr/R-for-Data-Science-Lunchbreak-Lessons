# music
# https://cran.r-project.org/package=music

# install.packages("music")
library(music)

buildChord(root = "G", chord = "diminished", 
           play = TRUE, plot = TRUE,
           formatNotation = FALSE)

buildScale(root = "G", scale = "major",
           descending = TRUE, pairs = FALSE,
           play = TRUE, plot = TRUE,
           formatNotation = FALSE)

GmajorScale <- buildProgression(root = "G", scale = "major", 
           play = TRUE, plot = TRUE,
           formatNotation = FALSE)

mplot(freq2wave(440))

playChord(chord = c("A4","C#5","E6"), 
          type = "harmonic", duration = 3)


# play chickweight --------------------------------------------------
 
threeOctaves <- expand.grid(c(LETTERS[1:7]), c(3:5))  |> 
  {\(myvar) paste0(myvar$Var1,myvar$Var2)}()

# assign notes to values --------------------------------------------------

chickChords <- ChickWeight

cutAndAssignNote <- function(cwColumn) {
  cut(cwColumn,length(threeOctaves), labels = c(1:length(threeOctaves)))
}

chickChords$weight <- threeOctaves[cutAndAssignNote(ChickWeight$weight)]
chickChords$Time <- threeOctaves[cutAndAssignNote(ChickWeight$Time)]
chickChords$Chick <- threeOctaves[cutAndAssignNote(as.numeric(ChickWeight$Chick))]
chickChords$Diet <- threeOctaves[cutAndAssignNote(as.numeric(ChickWeight$Diet))]

for (playThisRow in 1:nrow(chickChords) ) {
  playChord(chickChords[playThisRow,])
  print(chickChords[playThisRow,])
  Sys.sleep(1)
}



