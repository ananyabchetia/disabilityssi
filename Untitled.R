# Install necessary packages if not already installed
install.packages("ggplot2")
install.packages("waffle")
install.packages("dplyr")
install.packages("patchwork")
library(ggplot2)
library(waffle)
library(patchwork)  # For arranging waffle charts

# Data for waffle charts
data1 <- c(
  ".   " = 92.5,
  ".    " = 7.5
)

data2 <- c(
  ".        " = 35,
  ".         " = 65
)

num_rows <- 5  

# First Waffle Chart
waffle1 <- waffle(data1, rows = num_rows, keep = TRUE, flip = FALSE, 
                 colors = c("#6BAED6", "#FF7F50")) +
  theme_void() + 
  coord_fixed() +  # Ensures correct proportions and removes grey space
  theme(
    plot.background = element_rect(fill = "#f4f7f7", color = NA),  # Set background color
    panel.background = element_rect(fill = "#f4f7f7", color = NA), # Ensure panel matches
    legend.position = "top",
    #plot.title = element_text(size = 14, face = "bold")
  ) + 
  labs(title = " ", 
       fill = "Category",
       subtitle = "")

# Second Waffle Chart
waffle2 <- waffle(data2, rows = num_rows, keep = TRUE, flip = FALSE, 
                 colors = c("#6BAED6", "#FF7F50")) +
  theme_void() +  
  coord_fixed() +  # Ensures correct proportions and removes grey space
  theme(
    plot.background = element_rect(fill = "#f4f7f7", color = NA),  # Set background color
    panel.background = element_rect(fill = "#f4f7f7", color = NA), # Ensure panel matches
    legend.position = "top",
    #plot.title = element_text(size = 14, face = "bold")
  )+ 
  labs(title = " ", 
       fill = "Category",
       subtitle = " ")

# Arrange the charts vertically with spacing
waffle1 / waffle2 + plot_layout(heights = c(1, 1.1))  # Adjust spacing slightly



