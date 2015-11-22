# Developing_Data_Products
This repository contains the ui.R and server.R codes 
Codes were created as part of the assigment in the course: DEVELOPING DATA PRODUCTS
as part of the DATA MANAGEMENT SPECIALIZATION -John Hopkins University - COURSEA

The App estimates the fuel consumption of a vehicle based on the selected features. 
The model for the prediction comes from a regression anaylisis of the dataset mtcars.

MTCARS is a database with data extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). (Source Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411).
MTCARS is available in the database library in R.

Installation of shiny package is required.

The regression analysis had been developed as part of another course in the Specialization.
The database contains 11 variables. However, the regression analysis showed that Gross Horse Power, Weight, number of cylinders and type of transmission are the most influentials on fuel consumption. The model contains then the most influencial variables.

In order to predict the fuel consumption, select Gross Horse Power, the weight of the vehicle, the number of cylinders and the type of transmission.
Click SUBMIT button.

App will show the values selected and the fuel consumption in miles per gallon and its equivalent Kilometers per liter.

