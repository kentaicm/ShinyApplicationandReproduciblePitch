#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("Investment Calculator"),
                sidebarPanel(
                        numericInput('share', 'How many shares you like to buy?', 10, min = 1, max = 100000000, step = 1
                        ),
                        numericInput('apple', 'What is Apple share price?', 153, min = 1, max = 12, step = 1
                        ),
                        submitButton('Buy')
                ),
                mainPanel(
                        h3('Calculate the capital required to buy Apple shares'),
                        h4('Cost to buy ($)'),
                        verbatimTextOutput("Ctb"),
                        h4('Commission ($) if $1 per share'),
                        verbatimTextOutput("Com"),
                        h4('Total capital required ($)'),
                        verbatimTextOutput("Tcr"),
                        h5('This is an investment calculator. For user who likes to buy the shares of 
Apple (AAPL), they can key in the quantity they like to buy at the left panel.
But that is not the end, the user also need to input the share price of Apple
(APPL) for the web application to proceed further. After keying in these 2 input, 
the web application will calculate the cost, commission and the total capital required.')
                )
        )
)

