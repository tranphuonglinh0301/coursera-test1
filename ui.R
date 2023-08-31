# Load required libraries
require(leaflet)


# Create a RShiny UI
shinyUI(
    # Complete this function to render a leaflet map
  
  fluidPage(padding=5,
  titlePanel("Bike-sharing demand prediction app"), 
  leafletOutput(outputId = "city_bike_map", width = "100%", height = "600"),
  # Create a side-bar layout
  sidebarLayout(
    # Create a main panel to show cities on a leaflet map
    mainPanel(
      leafletOutput(outputId = "city_bike_map", height = "1000")
      # leaflet output with id = 'city_bike_map', height = 1000
    ),
    # Create a side bar to show detailed plots for a city
    sidebarPanel(
      selectInput(inputId ="city_dropdown", label = "City choice", choice = c("All", "Seoul", "Suzhou", "London", "New York", "Paris"))
      # select drop down list to select city
    ))
))