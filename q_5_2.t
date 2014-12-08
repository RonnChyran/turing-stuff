/*
 #This header is valid YAML 1.2 and can be parsed as such
 File: "q1.t"
 Author: "Ronny Chan"
 Class: ICS2O1
 Purpose: >
 ""
 Input:
 - ""
 Output:
 - ""
 Process:
 - ""
 Imports: #This program will not run without the following files located in the same directory as this file
 - "prompt.t"
 - "boolconv.t"
 License: "The MIT License (MIT) (See COPYING)"
 */

import var prompt in "prompt.t", var boolconv in "boolconv.t"

var iMaximumNumber : real := 0
var iMinimumNumber : real := maxint 
var iCounter : real := 1
var iTotalNumbers : real := 0
var iCurrentNumber : real

loop
    iCurrentNumber := prompt.promptreal("Please enter a number. \nEnter a negative number to end.")
    if (iCurrentNumber < 0) then
        exit
    end if
    if (iCurrentNumber < iMinimumNumber) then
        iMinimumNumber := iCurrentNumber
    end if 
    if (iCurrentNumber > iMaximumNumber) then
        iMaximumNumber := iCurrentNumber
    end if
    iTotalNumbers += iCurrentNumber
    iCounter += 1
    put "\n"
end loop

put "The maximum number is ", iMaximumNumber
put "The minimum number is ", iMinimumNumber
put "The average is ", (iTotalNumbers / iCounter)
