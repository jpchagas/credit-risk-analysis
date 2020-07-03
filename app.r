#getwd()

#install.packages("shiny")
#install.packages("ggplot2")


library(shiny)
library(ggplot2)



#CREATE SHINY APP

port <- Sys.getenv('PORT')

shiny::runApp(
  appDir = getwd(),
  host = '0.0.0.0',
  port = as.numeric(port)
)

#shinyApp(ui = ui, server = server)

