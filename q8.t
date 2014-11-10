/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q8.t"
Author: "Ronny Chan"
Purpose: >
      Calculate the face value of a consumer loan given the amount the consumer wishes to receive
      after interest has been deduced. Calculate how much money per monthly installment is to be repaid/
Input: 
    - "The interest rate"
    - "The amount of money the consumer wishes to receive"
    - "The duration of the loan"
Output: 
    - "The face value the consumer must loan in order to receive his desired value"
    - "How much money is to be repaid to the loaner each month"
Process:
    - "Prompt the user for the interest rate of the loan"
    - "Prompt the user for the desired value the consumer wishes to receive"
    - "Prompt the user for the duration of the loan"
    - "Calculate and output the face value of the loan"
    - "Calculate and output the amount of money to be repaid each month"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/

import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

const PERCENTAGE := 100 %Percentage factor
const MONTHS_IN_YEAR := 12 %How many months in a year

%Declare variables
var rInterestRate : real %The interest rate
var intLoanDuration : int %The loan duration
var rReceiptValue : real %How much consumer wishses to receive
var rFaceValue : real %The face value of the loan
var rInstallmentValue : real %How much is to be paid per installment

%prompt user for interest rate
rInterestRate := prompt.promptreal("What is the interest rate in %")
%prompt user for how much the consumer needs to receive
rReceiptValue := prompt.promptreal("How much money do you need to receive")
%prompt user for the duration of the loan
intLoanDuration := prompt.promptint("How many months is the loan duration")

%Calculate the face value of the loan using the formula face value = receipt value(1- (interest rate * loan duration))
rFaceValue := rReceiptValue / (1 - (rInterestRate / PERCENTAGE) * (intLoanDuration / MONTHS_IN_YEAR))
%Calculate how much money is to be repaid each month
rInstallmentValue := (rFaceValue / intLoanDuration)

%Output the face value of the loan and the value of the monthly installment
put "\n---\n"
put "The face value of the loan to receive $", rReceiptValue, " is $", rFaceValue:0:2
put "It is to be paid in monthly installments of $", rInstallmentValue:0:2, " over ", intLoanDuration, " months."
