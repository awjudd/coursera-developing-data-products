# Author: Andrew Judd
# Date: July 25, 2016
# Description: Coursera - Developing Data Products Course Assignment

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
    fluidPage(

        # Application title
        titlePanel("Tooth Growth Data Explorer"),
        
        # Make the layut one with a sidebar
        sidebarLayout(
            
            # Sidebar which will contain all of the inputs that the
            # table will react to
            sidebarPanel(
                selectInput(
                    "supplement",
                    "Supplement:", 
                    choices = c("ALL", "OJ", "VC")
                ),
                sliderInput(
                    "dosage",
                    "Dosage:",
                    min = 0.5,
                    max = 2,
                    value = c(0.5, 2)
                ),
                sliderInput(
                    "length",
                    "Tooth Length:",
                    min = 4,
                    max = 34,
                    value = c(4, 34)
                )
            ),
        
            # Show the filtered data set
            mainPanel(
               dataTableOutput('toothData')
            )
        )
    )
)