#install.packages("shiny")

library(shiny)

shinyUI(fluidPage(
    titlePanel("Plot Random Numbers"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "How Many Random Numbers Should be Plotted?", 
                         value = 100, min = 1, max = 100, step = 1),
            sliderInput("slider", "Pick Minimum and Maximum Values",
                        -100, 100, value = c(-100, 100)),
            checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE)
        ),
        mainPanel(
            h3("Graph of Random Points"),
            plotOutput("plot1")
        )
    )
))