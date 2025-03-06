library(ggplot2)
library(sf)
library(readr)
library(dplyr)
library(viridis)
#install.packages("svglite")
library(svglite)


hex_map <- st_read("/Users/ananya/columbia/somapython/data_studio/disability/us_states_hexgrid.geojson") 
state_df <- read_csv("/Users/ananya/columbia/somapython/data_studio/disability/states.csv") 

hex_map <- hex_map %>% mutate(state_code = sub("US-", "", iso3166_2))

state_df <- state_df %>% rename(state_code = State_code)

hex_map_merged <- hex_map %>% left_join(state_df, by = "state_code")

ggplot(hex_map_merged) +
  geom_sf(aes(fill = initial_claims_pending), color = "black", size = 1.0) +
  scale_fill_gradient(low = "cornflowerblue", high = "chocolate1", na.value = "gray") +
  geom_sf_text(aes(label = iso3166_2)) +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "#f4f7f7", color = NA),  # Set background color
    panel.background = element_rect(fill = "#f4f7f7", color = NA), # Ensure panel matches
  )+
  labs(
    title = ". ",
    fill = ". "
  )

if (!requireNamespace("svglite", quietly = TRUE)) install.packages("svglite")
library(svglite)

ggsave("hex_map.svg", plot = last_plot(), device = svglite::svglite, width = 10, height = 8)


library(ggplot2)
ggsave("hex_map.svg", plot = last_plot(), device = "svg", width = 10, height = 8)
ggsave("hex_map.svg", plot = last_plot(), device = svglite::svglite, width = 10, height = 8)

