library(shiny)

ui <- fluidPage(
  titlePanel("DSA Mentoring: Twitter Sentiment Analisys"),
  
  
  sidebarLayout(
    
    sidebarPanel(
      # Copy the line below to make a text input box
      textInput("text", label = h3("Text input"), value = "Enter text..."),
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("value")))
    ),
    
    mainPanel(
      #fluidRow(
      #  column(4,
      #         selectInput("man",
      #                     "Manufacturer:",
      #                     c("All",
      #                       unique(as.character(mpg$manufacturer))))
      #  ),
      #  column(4,
      #         selectInput("trans",
      #                     "Transmission:",
      #                     c("All",
      #                       unique(as.character(mpg$trans))))
      #  ),
      #  column(4,
      #         selectInput("cyl",
      #                     "Cylinders:",
      #                     c("All",
      #                       unique(as.character(mpg$cyl))))
      # )
      #),
      # Create a new row for the table.
      DT::dataTableOutput("table")
    )
  )
  
  # Create a new Row in the UI for selectInputs
  
)