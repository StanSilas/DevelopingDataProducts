#server.r 2

library(shiny)

# Define server logic for slider examples
shinyServer(function(input, output) {
  
  
  #Note: this app is not a great app but it satisfies all the given conditions 
  #The slider is sthe form of input
  #The multiplication input$decimal*input$integer is the operation on ui input
  #the output displayed is result of reactivity of the sliders
  # 
  #
  #
  
  # Reactive expression to compose a data frame containing all of
  # the values
  sliderValues <- reactive({
    
    # Compose data frame
    data.frame(
      Item = c("Number 1", 
               "Number 2",
               "Product"),
      Value = as.character(c(input$integer, 
                             input$decimal,
                             (input$integer)*(input$decimal)
                             
                             )), 
      stringsAsFactors=FALSE)
  }) 
  
  
  # Show the values using an HTML table
  output$values <- renderTable({
    sliderValues()
  })
  
  
  
})
