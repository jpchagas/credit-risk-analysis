library(readr)
#source("functions.R")
server <- function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- read_csv("data/credit_dataset.csv")
    #if (input$man != "All") {
    #  data <- data[data$manufacturer == input$man,]
    #}
    #if (input$cyl != "All") {
    #  data <- data[data$cyl == input$cyl,]
    #}
    #if (input$trans != "All") {
    #  data <- data[data$trans == input$trans,]
    #}
    data
  }))
  
  #output$value <- renderPrint({ input$text })
  
}