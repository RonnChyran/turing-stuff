/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q5.t"
Author: "Ronny Chan"
Purpose: >
      Calculate the amount of diet soda that can be drunk without dying
      due to receiving a lethal dose of artificial sweetener.
Input: 
    - "The lethal dose of sweetener needed to kill a mouse in grams"
    - "The weight of the mouse in kg"
    - "The weight at which the dieter will stop dieting in kg"
Output: 
    - "How much soda would be needed to contain the lethal dose of artificial sweetener, and such would kill the drinker"
Process:
    - "Prompt the user for the lethal dose of sweetener needed to kill a mouse in mL"
    - "Prompt the user for the weight of the mouse in kg"
    - "Prompt the user for the weight at which, in kg, the dieter will stop dieting"
    - "Calculate the amount of sweetener per kilogram is needed to kill the dieter from the values given for the mouse"
    - "Calculate and output the amount of soda that must be drunk before the dieter receives the lethal dose of artificial sweetener"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/

import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

const SWEETENER_IN_ONE_ML := 0.01 %Define the amount of artificual sweetner in one mL of soda
const SODA_SWEETENER_FACTOR := 100 %The amount of soda in mL per 1 gram of articial sweetener

%Declare variables 
var rLethalDoseMouse : real %The lethal dose of sweetener needed to kill a mouse in grams
var rLethalDoseDieter : real %The lethal dose of sweetener needed to kill the dieter in gram
var rMouseWeight : real %The weight of the mouse in kg
var rDieterWeight : real %The weight at which, in kg, the dieter will stop dieting
var rSodaLethalDose : real %How much soda is required to contain the lethal dose of sweetener for the dieter

%prompt user for the lethal dose of sweetener needed to kill a mouse
rLethalDoseMouse := prompt.promptreal("How much artificial sweetener in grams is needed to kill a mouse?") 
%prompt user for the weight of the mouse
rMouseWeight := prompt.promptreal("What is the weight of the mouse in kg?") 
%prompt user for the weight of the dieter
rDieterWeight := prompt.promptreal("At what weight in kg will the dieter stop dieting?") 

%Calculate the amount of sweetener that would kill the dieter
rLethalDoseDieter := (rLethalDoseMouse / rMouseWeight) * rDieterWeight
%Calculate how much soda is needed to contain the lethal dose for the dieter
rSodaLethalDose := rLethalDoseDieter * SODA_SWEETENER_FACTOR

%Calculate and output how much soda is needed to contain the lethal dose for the dieter
put "\n---\n"
put "You would have to drink ", rSodaLethalDose , " mL of soda before you die from artificial sweetener poisoning."

