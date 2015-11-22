
library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("PREDICT FUEL CONSUMPTION EFFICIENCY OF A VEHICLE"),
        sidebarPanel(
                h3('Select the features of the vehicle'),
                h2(' '),
                sliderInput('hp', 'Gross Horse Power (hp)', value = 140, min = 50, max = 500, step = 10),
                sliderInput('weight', 'Weight (lbs)', value = 3200, min = 1000, max = 6000, step = 100),
                radioButtons("cyl", "Number of cylinders (select one)", c("4 cylinders" = 4, "6 cylinders" = 6, "8 cylinders" = 8)),
                radioButtons("am", "Type of transmission (select one)", c("Manual transmission" = 1, "Automatic transmission" = 0)),
                submitButton('Submit')
        
        ),
        
        mainPanel(
                strong("This App is developed as part of the assigments withing the course Developing Data Products - Data Management Specialization - John Hopkings University - Coursera."),
                p(" "),
                p("The App estimates the fuel consumption of a vehicle based on the selected features. The model for the prediction comes from a regression anaylisis of the dataset mtcars."),
                p("MTCARS is a database with data extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). (Source

Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411)."),
                p("The database contains 11 variables. However, the regression analysis showed that Gross Horse Power, Weight, number of cylinders and type of transmission are the most influentials on fuel consumption. The model contains then the most influencial variables."),
                h3('Results of Prediction'),
                h4('The characteristics of your car are:'),
                verbatimTextOutput("inputValue1"),
                verbatimTextOutput("inputValue2"),
                verbatimTextOutput("inputValue3"),
                verbatimTextOutput("inputValue4"),
                h4('The predicted average fuel comsumption of your car is '),
                verbatimTextOutput("prediction"),
                strong("Author: ELVIS ZAVATTI")
        
        )
                
        ))