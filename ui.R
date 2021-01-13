library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Next Word Up Capstone"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h2("Instructions:"), 
            h5("1. Enter a word or phrases in the text box."),
            h5("2. The predicted next word prints below the text box."),
            h5("4. A question mark means no prediction, due to typo or swear words inserted"),
            a("Source Code GitHub Repository", href = "https://github.com/WritPen/NextWordUp-Capstone")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            
            textInput("input",
                      h3("Please Enter some text:"), 
                      value = "word"),
            h3("Prediction for the Next Word:"),
            h4(em(span(textOutput("ngram_output"), style="color:darkgreen")))
            
            
        )
        
    )
)

)
