#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
Capital <- function(share) share 
shinyServer(
        function(input, output) {
                output$Ctb <- renderPrint({input$share * input$apple})
                output$Com <- renderPrint({Capital(input$share)})
                output$Tcr <- renderPrint({Capital(input$share * input$apple + input$share)})
                
        }
)