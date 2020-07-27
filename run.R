getwd()

#install.packages("shiny")
#install.packages("ggplot2")
install.packages("shinydashboard")
library(shiny)
library(ggplot2)
library(shinydashboard)


#CREATE SHINY APP


port <- Sys.getenv('PORT')

shiny::runApp(
  appDir = getwd(),
  host = '0.0.0.0',
  port = as.numeric(port)
)

#shinyApp(ui = ui, server = server)

