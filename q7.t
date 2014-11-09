/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q7.t"
Author: "Ronny Chan"
Purpose: >
      Calculate next months electricity bill given a 10% discount and a 3% tax rate before discount.
Input: 
    - "The amount of kilowatt-hours consumed"
Output: 
    - "The cost of next month's electricity bill"
Process:
    - "Prompt the user for the  amount of kilowatt-hours consumed"
    - "Calculate the cost of electricity, including tax, before discount"
    - "Calculate and output the cost of electricity after discount"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/

import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

const DISCOUNT_RATE := 0.1 %The discount rate
const TAX_RATE := 0.03 %The tax rate
const ELECTRICITY_COST := 0.16 %The cost of electricity per kWh in dollars

%Declare variables 
var rConsumedKilowattHours : real %The amount of kilowatt-hours of electricity consume
var rElectricityCostBeforeDiscount : real %The cost of electricity before the discount
var rTotalElectricityCost : real %The total cost of electricity for the month

%prompt user for the amount of kilowatt-hours used
rConsumedKilowattHours := prompt.promptreal("How many kilowatt-hours were used this month?") 

%Calculate the cost of electricity  including tax before discount
rElectricityCostBeforeDiscount := (rConsumedKilowattHours * ELECTRICITY_COST) * (1 + TAX_RATE)
%Calculate the cost of electricity after the discount
rTotalElectricityCost := rElectricityCostBeforeDiscount - (rElectricityCostBeforeDiscount * DISCOUNT_RATE)


%Output the cost of electricity on next month's bill
put "\n---\n"
put "Next month's electricity bill after tax and discount will be $", rTotalElectricityCost:0:2
