####install packages ####
#install.packages("mapview")
#install.packages("dplyr")
#remove.packages(mapview)
#install.packages("leaflet")
#install.packages("maps")
#install.packages("ggmap")
#install.packages("ggplot2")
#install.packages("osmdata")
#install.packages("tmap")
install.packages("sf")

####load packages ####
library(dplyr)
library(leaflet)
library(ggplot2)
library(maps)
library(ggmap)
library(osmdata)
library(tmap)
library(geosphere)
library(sf)





####code####

# Load required libraries
library(leaflet)

# Create a leaflet map centered on Europe
world_map <- leaflet() %>%
  setView(lng = 10, lat = 50, zoom = 3) %>%
  addTiles()  # Add base map tiles

# Cities and their coordinates
cities <- data.frame(
  city = c("New York", "Porto", "Antalya", "Hildesheim", "Hamburg", "Palma de Mallorca", "Sylt", "Berlin", "Barcelona"),
  lat = c(40.7128, 41.1579, 36.8969, 52.1508, 53.5511, 39.5696, 54.9077, 52.5200, 41.3851),
  lon = c(-74.0060, -8.6291, 30.7133, 9.9512, 9.9937, 2.6502, 8.3170, 13.4050, 2.1734)
)

# Add markers for the cities
world_map <- world_map %>%
  addMarkers(
    data = cities,
    lng = ~lon,
    lat = ~lat,
    popup = ~city
  )

# Display the map with markers
world_map

