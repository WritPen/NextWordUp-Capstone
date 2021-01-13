library(shiny)

shinyServer (function(input, output) {
    
    output$ngram_output <- renderText({
        suppressWarnings(predict(input$input))
    })
    
})
