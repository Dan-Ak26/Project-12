#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.

library(shiny)
data("mtcars")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Mtcars Dataset"),
    
    
    tabsetPanel(

    # Sidebar with a slider input for number of bins 
    tabPanel("App",
    sidebarLayout(
        sidebarPanel(
          selectInput("var","Choose one:", choices = c("mpg","hp","wt","disp")),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30),
          div(style = "font-size: 16px; font-weight:bold; margin-top: 20px;",
            textOutput("SummaryText"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("mtcarsPlot"),
           
        )
    )
),



# Second tab: documentation
      tabPanel("About",
                h3("About this app"),
                p("This Shiny app uses the built - in
                mtcars dataset, which has fuel consumption
                and other characteristics of 32 cars."),
                p("Use the dropdown menu to select a variable
                mpg, hp, wt and disp. Adjust the slider to
                change the number of bins in the histogram."),
                p("The plot updates automatically based on your
                choices, showing how the distribution of that 
                variable looks across cars.")
    )
  )
)
    
  



# Define server logic required to draw a histogram
server <- function(input, output) {

    output$mtcarsPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- mtcars[[input$var]]
        bins <- seq(min(x, na.rm = TRUE),
                    max(x, na.rm = TRUE),
                    length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'blue', border = 'white',
             xlab = input$var,
             main = input$var)
        # outputs the mean, sd, and other variables
    output$SummaryText <- renderText({x <- mtcars[[input$var]]
                          paste("Variable:", input$var,
                                "| n =", length(x),
                                "| mean =", round(mean(x), 2),
                                "| sd =", round(sd(x), 2))})
      })
      
    }


# Run the application 
shinyApp(ui = ui, server = server)


