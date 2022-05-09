library(palmerpenguins)
library(ggplot2)
devtools::load_all()


# 1 scatter
scatter<-ggplot(data = penguins,
                       aes(x = flipper_length_mm,
                           y = body_mass_g)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 3,
             alpha = 0.8) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species")
scatter

scatter +
  theme_darwin()

# 2 scatter with facets
scatter_facets<-ggplot(data = penguins,
                       aes(x = flipper_length_mm,
                           y = body_mass_g)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 3,
             alpha = 0.8) +
  facet_grid(species ~ ., switch = "y") +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  scale_y_continuous(position = "right")

scatter_facets+
  theme(legend.position = "none")

scatter_facets +
  theme_darwin()+
  theme_darwin_facet()+
  theme(legend.position = "none")

# histogram
flipper_hist <- ggplot(data = penguins, aes(x = flipper_length_mm)) +
  geom_histogram(aes(fill = species),
                 alpha = 0.5,
                 position = "identity") +
  labs(x = "Flipper length (mm)",
       y = "Frequency",
       title = "Penguin flipper lengths")
flipper_hist

flipper_hist +
  theme_darwin()
