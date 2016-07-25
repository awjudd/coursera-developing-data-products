#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
    fluidPage(

        # Application title
        titlePanel("Tooth Growth Data Explorer"),
        
        # Sidebar with a slider input for number of bins 
        sidebarLayout(
            
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
        
            # Show a plot of the generated distribution
            mainPanel(
               dataTableOutput('toothData')
            )
        )
    )
)