

library(shiny)

shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        set.seed(2020-04-05)
        number_of_points <- input$numeric
        minX <- input$slider[1]
        maxX <- input$slider[2]
        
        dataX <- runif(number_of_points, minX, maxX)
        xlab <- ifelse(input$show_xlab, "Random numbers", "")
        ylab <- "Y Axis"
        main <- "Random Number Plot"
        plot(dataX, xlab = xlab, ylab = ylab, main = main,
             xlim = c(0, 100), ylim = c(-100, 100), type="b", col="blue")
    })
})