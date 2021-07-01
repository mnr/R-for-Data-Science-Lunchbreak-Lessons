# plotmath & expression

plot(y = GA_voterRacebyCounty$raceRatio, 
     x = GA_voterRacebyCounty$purgeVsTotal,
     xlab = "% of population purged",
     ylab = expression("Minority population " %/% " White population"))