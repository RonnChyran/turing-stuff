/*
#This header is valid YAML 1.2 and can be parsed as such
File: "q3.t"
Author: "Ronny Chan"
Purpose: >
      Calculate and output the value of the users holding of a particular stock
Input: 
    - "The quantity of stock held"
    - "The whole number portion of a stock price expressed in mixed fraction form"
    - "The numerator portion of a stock price expressed in mixed fraction form"
    - "The denominator portion of a stock price expressed in mixed fraction form"
Output: 
    - "The value of the users' holding of the stock expressed as a decimal number"
Process:
    - "Prompt the user for the whole number portion of a stock price"
    - "Prompt the user for the numerator portion of a stock price "
    - "Prompt the user for the denominator portion of a stock price"
    - "Convert the stock price from fraction to decimal"
    - "Calculate and output the value of the users' holding of the stock expressed as a decimal number"
Imports: #This program will not run without the following files located in the same directory as this file
    - "prompt.t"
License: "The MIT License (MIT) (See COPYING)"
*/
import var prompt in "prompt.t" %Import prompt utilities (see prompt.t)

%Declare variables 
var intStockQuantity : int %quanity of stock held
var intShareWholeNumber : int %whole number portion of the stock
var intShareNumerator : int %numerator portion of the stock
var intShareDenominator : int %denominator portion of the stock
var rSharePrice : real %cost of one share in decimals
var rStockValue : real %the total value of the held stock

%prompt user for the whole number portion of the stock price
intStockQuantity := prompt.promptint("How many shares do you own?") 
%prompt user for the whole number portion of the stock price
intShareWholeNumber := prompt.promptint("What is the whole number portion of the stock price?") 
%prompt user for the numerator portion of the stock price
intShareNumerator := prompt.promptint("What is the numerator portion of the stock price") 
%prompt user for the denominator portion of the stock price 
intShareDenominator := prompt.promptint("What is the denominator portion of the stock price") 

%Convert mixed fraction to improper fraction then to decimal
rSharePrice := ((intShareWholeNumber * intShareDenominator) + intShareNumerator) / intShareDenominator 
%Calculate the value of the stock
rStockValue := rSharePrice * intStockQuantity

%Calculate and output the value of the stock rounded to 2 decimals
put "\n---\n"
put "The value of your stock is $",  rStockValue:0:2
