#idea 2 Ui.r

library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(
  
  #  Application title
  titlePanel("Simple Shiny Multiplier"),
  
  # Sidebar with sliders that demonstrate various available
  # options
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      sliderInput("integer", "Number 1:",
                  min=0, max=1000, value=500),
      
      # Decimal interval with step value
      sliderInput("decimal", "Number 2:",
                  min = 0, max = 1, value = 0.5, step= 0.1),
      helpText("How to use the APP : This is a simple multiplier app. Drag the sliders across to see the product of the number1 and number 2 be displayed in a seperate table.Please wait for sometime as the output takes a while before it is displayed")
      
    ),
    
    # Show a table summarizing the values entered
    mainPanel(
      
      tabsetPanel(type = "tabs", 

                 
                  tabPanel("Results", tableOutput("values"))
      )
      

    )
  )
))
