library(shiny)

playerNames <-  unique(tennisRanks$Player)

shinyUI(pageWithSidebar(
  headerPanel("Tennis player participation over the years"),
  
  
  sidebarPanel(
    h4("Choose player name"),
    
    selectInput('in1', 'Player',c(Choose='', as.character(playerNames)), selectize=FALSE)
    
  ),
  mainPanel(
    
    h4("This example shows the player participation in Tennis from year 2000 to 2010. 
          Selecte the player name from the drop down list to see the result"),
    textOutput('out1')
  )
))