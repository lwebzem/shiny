shinyServer(function(input, output, session) {
  
   
  

output$plot1 <- renderPlot({ 
  if(input$clusters == 1) 
     {
    par(mar = c(2.0, 2.0, 2.0, 2.0)+0.1)
    x <- seq (0, 20, length = 10)
    plot(x)
    }
  if(input$clusters == 2)
      {
     x <- seq (0, 50, length = 50)
     plot(x^2)
  }
    
  if(input$clusters == 3) 
  {
    
    x <- seq (-50, 50, length = 50)
    plot(x^2)
    
  }
  if(input$clusters == 4) 
    {
    x <- seq (0, 20, length = 10)
    plot(x^3)
  }
  if(input$clusters == 5) 
    {
    x <- seq (-20, 20, length = 10)
    plot(abs(x))
  }
  
  
})

})