

library(shiny)

shinyServer(function(input,output) {
  n <- reactive({
    input$n
  })
  N <- reactive({
    input$N
  })
  cardsLeft <- reactive({
    input$cardsLeft
  })
  
  output$wins <- renderText({
    1/input$cardsLeft
  })
  
  output$values <- renderText({
    input$n/(input$N + input$n)/input$cardsLeft
  })
  
  output$odds <- renderText({
    (1 - input$n/(input$N + input$n)/input$cardsLeft)/(input$n/(input$N + input$n)/input$cardsLeft)
  })
  
  output$expect <- renderText({
    round(-(input$n)*(1 - input$n/(input$N + input$n)/input$cardsLeft) + (input$prevjack + input$n + input$N)*input$n/(input$N + input$n)/input$cardsLeft, 2)
  })
  
  output$expectper <- renderText({
    round((-(input$n)*(1 - input$n/(input$N + input$n)/input$cardsLeft) + (input$prevjack + input$n + input$N)*input$n/(input$N + input$n)/input$cardsLeft)/input$n, 2)
  })
  
})