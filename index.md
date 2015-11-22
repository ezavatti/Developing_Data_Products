---
title       : PREDICTING FUEL CONSUMPTION
subtitle    : DEVELOPING DATA PRODUCTS - Coursera - Data Management Specialization - John Hopkins University
author      : ELVIS ZAVATTI
job         : student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
## THE PROJECT

The project is part of the course Developing Data Products in the Data Management Specialization - Coursera offered by John Hopkins University.

An App was developed to predict the fuel consumption of a vehicle based on selected features. The model for the prediction comes from a regression anaylisis of the dataset MTCARS.

To see the App and have some fun with it, please click the following link.

https://ezavatti.shinyapps.io/Developing_Data_Products

MTCARS is a database with data extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 11 aspects of automobile design and performance for 32 automobiles (1973-74 models). 

(Source Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411).

--- .class #id 

## MTCARS

MTCARS has the following variables:

[, 1]  mpg  Miles/(US) gallon  
[, 2]  cyl  Number of cylinders  
[, 3]  disp  Displacement (cu.in.)  
[, 4]  hp  Gross horsepower  
[, 5]  drat  Rear axle ratio  
[, 6]  wt  Weight (lb/1000)  
[, 7]  qsec  1/4 mile time  
[, 8]  vs  V/S  
[, 9]  am  Transmission (0 = automatic, 1 = manual)  
[,10]  gear  Number of forward gears  
[,11]  carb  Number of carburetors 


--- .class #id 

## The App

In order to determine the the most influential variables, a linear regression analysis was performed on all the variables. The dependent variable was mpg  Miles/(US) gallon and the rest were the dependent variables.

The most influential variables were:

Gross horse Power
Number of Cylinders
Weight
Type of transmission

For the purposes of this project, a new regression was prepared considering the mpg as dependent variables and the most influential variables as independent variables.

The App allows to choose the independent variables and produces the following outputs:

a. Shows the selected quantities of each variable
b. Shows the fule consumption in miles per gallon and its equivalent in kilometers per liter

In order to produce the output, the button SUBMIT must be clicked once the variables are chosen.

--- &radio 

## Let's give it a try!!!!

Click on the link https://ezavatti.shinyapps.io/Developing_Data_Products
The App is easy to understand. Select the features of the vehicle and click SUBMIT. 

The App will show the selected variables and will present the fuel consumption in miles per gallon and its equivalent in kilometers per liter.



### Question 1



A MASERATI BORA has a power of 335 hp, a weight of 3,570 lbs, 8 cylinders and its transmission is manual.
What is its estimated fuel consumption in miles per gallon?

1. It is impossible to determine from the App

2. _13.8_

3. 5.84

4. 19.64 (13.8 + 5.84) 

*** .hint 

Check the input. Notice the answer units.

*** .explanation 

The correct answer is 13.8 miles per gallon


