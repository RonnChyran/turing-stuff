/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q6.t"
Author: "Ronny Chan"
Purpose: >
      Calculate the amount of retroactive pay due an employee for 6 months, 
      the new annual and monthly salaries, after a pay increase of 7.6% 
      applicable retroactivelyf or 6 months
Input: 
    - "The previous annual salary before the pay increase"
Output: 
    - "The value of retroactive pay due after the pay increase"
    - "The new annual salary"
    - "The new monthly salary"
Process:
    - "Prompt the user for the previous annual salary before the pay increase"
    - "Calculate the previous monthly salary"
    - "Calculate the retroactive pay due"
    - "Calculate the new annual salary"
    - "Calculate the new monthly salary"
    - "Output the retroactive pay due, and the new monthly and annual salaries after the pay increase"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/

import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

const PAY_INCREASE_RATE := 0.076 %The rate of pay increase
const MONTHS_IN_YEAR := 12 %How many months in a year
const MONTHS_WITH_RETROACTIVE_PAY := 6 %How many months does the pay increase apply retroactively

%Declare variables 
var rPreviousAnnualSalary : real %The previous annual salary of the employee
var rNewAnnualSalary : real %The new annual salary of the employee
var rPreviousMonthlySalary : real %The previous monthly salary of the employee
var rNewMonthlySalary : real %The previous monthly salary of the employee
var rRetroactivePay : real %The value of the retroactive pay after the pay increase

%prompt user for the previous annual salary
rPreviousAnnualSalary := prompt.promptreal("What was the employee's previous annual salary") 

%Calculate the previous monthly salary
rPreviousMonthlySalary := rPreviousAnnualSalary / MONTHS_IN_YEAR
%Calculate the value of retroactive pay after the pay increase
rRetroactivePay := rPreviousMonthlySalary * MONTHS_WITH_RETROACTIVE_PAY * PAY_INCREASE_RATE
%Calculate the new annual salary
rNewAnnualSalary := rPreviousAnnualSalary * (1 + PAY_INCREASE_RATE)
%Calculate the new monthly salary
rNewMonthlySalary := rNewAnnualSalary / MONTHS_IN_YEAR

%Calculate and output the amount of retroactive pay due the employee, the new annual salary, and the new monthly salary.
put "\n---\n"
put "The employee is due $", rRetroactivePay:0:2 ," in retroactive pay."
put "The new annual salary is $", rNewAnnualSalary:0:2
put "The new monthly salary is $", rNewMonthlySalary:0:2


