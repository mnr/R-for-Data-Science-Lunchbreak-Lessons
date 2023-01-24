# gganimate

# install.packages("gganimate")
library(gganimate)
library(dplyr)

# static plot ------
ggplot(ChickWeight, aes(x = Time, y = weight)) +
  geom_point()

# animate the above -----
ggplot(ChickWeight, aes(x = Time, y = weight)) +
  geom_point() +
  transition_states(Diet,
                    transition_length = 2,
                    state_length = 1)

# labels -------
ggplot(ChickWeight, aes(x = Time, y = weight)) +
  geom_point() +
  transition_states(Diet,
                    transition_length = 2,
                    state_length = 1) +
  ggtitle("Showing Diet {closest_state}",
          subtitle = "Day {Time}")
