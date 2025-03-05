library(ggplot2)
library(sf)
library(readr)
library(dplyr)
library(viridis)
my_palette <- rev(magma(8))[c(-1, -8)]

hex_map <- st_read("/Users/ananya/columbia/somapython/data_studio/disability/us_states_hexgrid.geojson") 
state_df <- read_csv("/Users/ananya/columbia/somapython/data_studio/disability/states.csv") 

hex_map <- hex_map %>% mutate(state_code = sub("US-", "", iso3166_2))

state_df <- state_df %>% rename(state_code = State_code)

hex_map_merged <- hex_map %>% left_join(state_df, by = "state_code")

ggplot(hex_map_merged) +
  geom_sf(aes(fill = initial_claims_pending), color = "black", size = 1.0) +
  scale_fill_gradient(low = "chocolate1", high = "blueviolet", na.value = "gray") +
  geom_sf_text(aes(label = iso3166_2)) +
  theme_void() +
  labs(
    title = "The number of pending SSI or SSD claims in 2024",
    fill = "Number of pending cases"
  )
