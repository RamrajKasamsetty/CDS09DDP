library(shiny)

shinyServer(
  function(input, output, session) {
    totalNumPlayed <- 0
    
   totalNumPlayed <- reactive({nrow(subset(tennisRanks, Player == input$in1, select = 1))})
   
   
    output$out1 <- renderPrint(paste(input$in1,"played totally", totalNumPlayed(), 
                                     "time between years 2000 and 2010" ))
   
  }
)