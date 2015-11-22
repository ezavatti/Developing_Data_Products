library(shiny)
data(mtcars)

modelFit <- lm(mpg ~ hp + cyl + wt + am, data=mtcars)
mpg <- function(hp, cyl, wt, am) {
        cyl<- as.numeric(cyl)
        am<- as.numeric(am)
        x<- modelFit$coefficients[1] + modelFit$coefficients[2] * hp + 
                modelFit$coefficients[3] * cyl + modelFit$coefficients[4] * wt + modelFit$coefficients[5]*am
        x<- format(round(x,2), nsmall =2)

}

consumek<- function(hp, cyl, wt, am) {
        y<- mpg(hp, cyl, wt, am)
        y<- (1.609/3.8)*y
        
}
                  
shinyServer(
        function(input, output){
                consume<- reactive({mpg(input$hp, input$cyl, input$weight/1000, input$am )})
                consumek<- reactive({format(round(as.numeric(consume())*1.609/3.8, 2), nsmall =2)})
                output$inputValue1 <- renderPrint({paste('POWER = ', input$hp, 'hp')})
                output$inputValue2 <- renderPrint({paste('WEIGHT = ', input$weight, 'lbs')})
                output$inputValue3 <- renderPrint({paste('NUMBER OF CYLINDERS = ', input$cyl)})
                output$inputValue4 <- renderPrint({
                        if(input$am == 1) paste('TYPE OF TRANSMISSION = MANUAL')
                        else if(input$am == 0) paste('TYPE OF TRANSMISSION = AUTOMATIC')})
                output$prediction <- renderPrint({paste(as.numeric(consume() ), ' miles per gallon  OR  ', as.numeric(consumek()), ' kilometers per liter' )})
                
        }
                )