library(shiny)
source("LoadCSVFile.R")
dfSelected = LoadCSVFile("punit.csv");
showList = comboList(dfSelected)

shinyUI(
    pageWithSidebar(  
        headerPanel("Explore the arrival time of input files on the system"),  
        sidebarPanel(
            titlePanel("Select the Input File"),
            selectInput("theLoader", "File Name", showList),
            selectInput("issun", "Sunday data", c(FALSE, TRUE)),
            p('Observed Mean:'),
            verbatimTextOutput("mean"),
            p('Critical Arrival Time:'),
            verbatimTextOutput("max")
        ), 
        mainPanel(
            plotOutput('newHist'),
            helpText(a("Source code and documentation",
                       href="https://github.com/kapoorpunit/Developing-Data-Products",
                       target="_blank")
            ),
            helpText(a("Slidify presentation",
                       href="https://rpubs.com/kapoorpunit/DataProduct_ShinyApp",
                       target="_blank")
            )
        )
    ))