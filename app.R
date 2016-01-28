library(shiny)

data <- read.csv("Movie.csv")
data$Rating <- as.numeric(data$Rating)

ui <- fluidPage(
  headerPanel('Movie Rating'),
  sidebarPanel(
    sliderInput('slider', 'Rating', min = 0, max = 10, value = c(0, 10)),
    br(),
    h3("Help"),
    p("This is a simple app displaying some movie rating and relavent info read from a csv file. Use the slider above to filter the rating. Results should be displayed according to the rating chosen."),
    br(),
    p("Github link: ")
  ),
  mainPanel(
    plotOutput('hist'),
    tableOutput('table')
  )
)

server <- function(input, output) {
  
  filteredData <- reactive({
    data[data$Rating > input$slider[1] & data$Rating < input$slider[2],]
  })
  
  output$hist <- renderPlot({
    hist(filteredData()$Rating, main = "Histogram of Movie Rating", xlab = 'Rating' )
  })
  
  output$table <- renderTable({
    filteredData()
  }, digits = 1)
}

shinyApp(ui = ui, server = server)