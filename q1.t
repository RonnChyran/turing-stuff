/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q1.t"
Author: "Ronny Chan"
Purpose: >
      Read in the weight of a package of
      breakfast cereal in ounces and
      then output the weight in metric tons as well as the number of
      boxes of cereal needed to yield one metric ton of cereal.
Input: 
    - "Weight of a package of breakfast cereal in ounces"
Output: 
    - "The weight of a package of breakfast cereal in tons"
    - "The number of boxes needed to yield one metric ton of breakfast cereal"
Process:
    - "Prompt the user for the package of breakfast cereal in ounces"
    - "Convert ounces to tons"
    - "Calculate and output the number of boxes needed to yield one metric ton of breakfast cereal"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/

import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

const TON_IN_OUNCES := 35273.92 %Define the number of ounces in a metric ton as a constant

%Declare variables
var rCerealWeightOz : real %The cereal weight in ounces
var rCerealWeightTon : real %The cereal weight in tons
var intBoxesOfCereal : int %The boxes of cereal needed to yield one metric ton of breakfast cereal

%Prompt user for the weight of a package of breakfast cereal in ounces
rCerealWeightOz := prompt.promptreal("What is the weight of a package of breakfast cereal in ounces") 

%Calculate the weight of one box of cereal in tons
rCerealWeightTon := rCerealWeightOz / TON_IN_OUNCES 
%Calculate the boxes of cereal needed to tield one metric ton of cereal
intBoxesOfCereal := ceil(TON_IN_OUNCES / rCerealWeightTon)

%Output seperator
put "\n---\n"
%Output the weight of a box of cereal in tons
put "One box of cereal weighs ", rCerealWeightTon, " metric tons." 
%Output the number of boxes of cereal needed to yield one metric ton of breakfast cereal
put "You need ", intBoxesOfCereal , " boxes of cereal to yield one metric ton of breakfast cereal."
