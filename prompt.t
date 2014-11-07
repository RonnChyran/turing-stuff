/*
#This header is valid YAML 1.2 and can be parsed as such
File: "prompt.t"
Author: "Ronny Chan"
Purpose: "Various reusable prompt utilities in Turing programs"
Input: Specified per function as @params
Output: Specified per function as @return as well as a type-safety warning
License: "The MIT License (MIT) (See COPYING)"
Process: 
    - "Display a messsage prompting user to input a value"
    - "Display a warning to the user to only input a particular type of value"
    - "Cast the input to a certain type if nescessary and return the inputted value"
*/
unit 
module prompt

    export _prompt, promptstr, promptint, promptreal
    
    /*
    Prompt user for a string and return as string
    @param strMsg The message to prompt the user for
    @return User input as string
    */
    function promptstr(strMsg: string): string %Prompt user for value as string
      var strRet: string
      put strMsg
      get strRet
      result strRet 
    end promptstr
    
    /*
    Prompt user for a string and return as integer
    @param strMsg The message to prompt the user for
    @return User input as integer 
    */
    function promptint(strMsg: string): int %Prompt user for value as string
      var strRet: string
      put strMsg
      put "Please enter integers only" %warn user to only input integers to prevent crash
      get strRet
      result strint(strRet) %convert to integer before returning result
    end promptint
    
    /*
    Prompt user for a string and return as real
    @param strMsg The message to prompt the user for
    @return User input as string
    */
    function promptreal(strMsg: string): real %Prompt user for value as string
      var strRet: string
      put strMsg
      put "Please enter numbers only" %warn user to only input numbers to prevent crash
      get strRet
      result strreal(strRet) %convert to real before returning result
    end promptreal
    
    /*
    Prompt user for a string and return as string
    Used when caller expects neither str, int or real, must be cast manually
    @param strMsg The message to prompt the user for
    @return User input as string
    */
    function _prompt(strMsg: string): string %general purpose prompt function. 
	result promptstr(strMsg) %Turing doesnt support generics, cast after result has been returned, assume string usage
    end _prompt
    
end prompt
