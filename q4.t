/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q4.t"
Author: "Ronny Chan"
Purpose: >
      Calculate and output the fuel efficiency of a car in miles per gallon 
      given the litres of gasoline used by the car, and the distance in miles
      traveled by the car
Input: 
    - "The litres of gasoline used by the car"
    - "The number of miles traveled by the car"
Output: 
    - "The number of miles per gallon the car delivered"
Process:
    - "Prompt the user for the litres of gasoline used by the car"
    - "Prompt the user for the number of miles traveled by the car"
    - "Convert the litres to gallons"
    - "Calculate and output the miles per gallon of the car"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/

import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

const LITRE_IN_GALLONS := 0.264179 %Define the value of one litre in a gallon

%Declare variables 
var rLitresGasoline : real %Litres of gasoline used by the car
var rGallonsGasoline : real %Gallons of gasoline used by the car
var rDistanceTravelledMiles : real %Distance travelled in miles by the car
var rTotalFuelEfficiency : real %The fuel efficiency of the car

%prompt user for the litres of gasoline used by the car
rLitresGasoline := prompt.promptreal("How many litres of gasoline has been used by your car?") 
%prompt user for the distance travelled in miles by the car
rDistanceTravelledMiles := prompt.promptreal("How many miles has your car travelled?") 

%Convert litres to gallons
rGallonsGasoline := rLitresGasoline * LITRE_IN_GALLONS
%Calculate the miles per gallon delivered by the car
rTotalFuelEfficiency := rDistanceTravelledMiles / rGallonsGasoline

%Calculate and output the miles per gallon delivered by the car
put "\n---\n"
put "The miles per gallon delivered by the car is ", rTotalFuelEfficiency , " mpg"
