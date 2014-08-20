
shinyUI(pageWithSidebar(
  headerPanel('Plotting Basic Functions & Curves in R'),
  sidebarPanel(
    
    p("1. Linear function"),
    p("2. Parabola plot"),
    p("3. Parabola with origin in the center"),
    p("4. Cubic function"),
    p("5. Absolute value function |x|"),
    br(),
    
      numericInput('clusters', 'Enter the number of function type from above on the left side(1 - 5)', 1,
                 min = 1, max = 5),
    p("Instructions"),
    p("This Shiny application demonsrates plotting basic functions in R. To try the user needs to enter integer number between 1 and 5. This number must be picked from the list of functions above. The actual code that is building plots is located in server.R in renderPlot function. There are 5 if statements, one for each function type from the list. The application does not show all possible functions but it gives some idea how to build many other function plots.")
  ),
  mainPanel(
    plotOutput('plot1')
  )
))