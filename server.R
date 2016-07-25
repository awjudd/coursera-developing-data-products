# Author: Andrew Judd
# Date: July 25, 2016
# Description: Coursera - Developing Data Products Course Assignment

# Load the libraries that we need
library(shiny)
library(datasets)
library(data.table)

# Get the data ready
data(ToothGrowth)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    # Make a reactive data set
    datasetInput <- reactive({
        # Filter the data based on the user's input
        data <- ToothGrowth[between(ToothGrowth$dose, input$dosage[1], input$dosage[2])
                  & between(ToothGrowth$len, input$length[1], input$length[2])
                  & (input$supplement == 'ALL' | input$supplement == ToothGrowth$supp),]
        
        # Clean up the columns so it's readable
        colnames(data) <- c('Tooth Length', 'Supplement Type', 'Dose in milligrams/day')
        
        data
    })
  
    # Render the actual data into a data table
    output$toothData <- renderDataTable({
        # Filter the data based on the parameters (reactive to the UI)
        datasetInput()
    })
  
})
