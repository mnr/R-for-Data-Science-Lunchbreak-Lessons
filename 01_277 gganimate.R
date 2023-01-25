# gganimate

# install.packages("gganimate")
library(gganimate)
library(dplyr)

# simplify data
splitChicks <- split(x = ChickWeight, f = ChickWeight$Chick)

# static plot ------
ggplot(splitChicks[["1"]], aes(x = Time, y = weight)) +
  geom_point()

# animate the above -----
ggplot(splitChicks[["1"]], aes(x = Time, y = weight)) +
  geom_point() +
  transition_states(Time,
                    transition_length = 2,
                    state_length = 1)

# labels -------
ggplot(splitChicks[["1"]], aes(x = Time, y = weight)) +
  geom_point() +
  transition_states(Time,
                    transition_length = 2,
                    state_length = 1) +
  ggtitle("Showing Day {closest_state}") + 
  shadow_wake(wake_length = .5)
