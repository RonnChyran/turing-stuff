/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q2.t"
Author: "Ronny Chan"
Purpose: >
      Calculate and output the cost of gasoline for a commute given the 
      distance of the commute in miles, the cost of gasoline, and the fuel efficiency
      of the car in miles per gallon
Input: 
    - "The distance in miles of the commute"
    - "The fuel efficiency of the car in miles per gallon"
    - "The current cost of gasoline in dollars ($) per gallon"
Output: 
    - "The cost of gasoline for the commute"
Process:
    - "Prompt the user for the distance of the commute"\
    - "Prompt the user for the fuel efficiency of the car"
    - "Prompt the user for the price of gasoline"
    - "Calculate and output the cost of gasoline for the commute"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/
import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

%Declare variables 
var rCommuteDistance : real %The distance of the commute
var rMilesPerGallon : real %The fuel efficiency of the car
var rPricePerGallon : real %The price of gas per gallon
var rCommuteCost : real %The total cost of gasoline for the commute

%prompt user for distance of commute
rCommuteDistance := prompt.promptreal("What distance in miles is your commute?") 
%prompt user for fuel efficiency
rMilesPerGallon := prompt.promptreal("What is your car's fuel efficiency in miles per gallon?") 
%prompt user for price of gas 
rPricePerGallon := prompt.promptreal("What is the current price of gas in dollars ($) per gallon?") 

%Calculate the cost of gasoline for the commute
rCommuteCost := rCommuteDistance / rMilesPerGallon * rPricePerGallon

%output the cost of gasoline for the commute
put "\n---\n"
put "The cost of gasoline for this commute is $", rCommuteCost:0:2
