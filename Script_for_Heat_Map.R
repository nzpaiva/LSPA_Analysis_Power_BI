# The following code to create a dataframe and remove duplicated rows is always executed and acts as a preamble for your script: 

# dataset <- data.frame(Estado, producao)
# dataset <- unique(dataset)

# Paste or type your script code here:

library(ggplot2)
library(geobr)
library(dplyr)
library(ggspatial)

# Get Brazilian state boundaries
brazil <- read_state(year = 2020)

# Join Power BI data with geographic data
map_data <- brazil %>%
  left_join(
    dataset,
    by = c("name_state" = "Estado")
  )

# Create map
ggplot(map_data) +
  geom_sf(aes(fill = producao), color = "white", linewidth = 0.3) +
  scale_fill_gradient(
    low = "lightgreen",
    high = "darkgreen"
  ) +
  theme_minimal() +
  annotation_scale(location = "bl", width_hint = 0.3, bar_cols = c("black", "white")) +
  annotation_north_arrow(location = "tl", which_north = "true", 
                         pad_x = unit(0.2, "in"), pad_y = unit(0.2, "in"),
                         style = north_arrow_fancy_orienteering) +
  labs(
    title = "Produção Total por Estado Brasileiro",
    fill = "Produção (Toneladas)"
  )


