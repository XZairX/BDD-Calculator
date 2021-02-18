﻿Feature: Calculator
	Simple BDD calculator for handling arithmetic operations with one or two input numbers

Background:
	Given I have a calculator

Scenario Outline: Addition
	And I enter any first input number <input1> into the calculator
	And I enter any second input number <input2> into the calculator
	When I press add
	Then the result should be equal to <result>
	Examples:
	| input1 | input2 | result |
	| 1      | -1     | 0      |
	| 1      | 0      | 1      |
	| 1		 | 1      | 2      |

Scenario Outline: Subtract
	And I enter any first input number <input1> into the calculator
	And I enter any second input number <input2> into the calculator
	When I press subtract
	Then the result should be equal to <result>
	Examples:
	| input1 | input2 | result |
	| 1      | -1     | 2      |
	| 1      | 0      | 1      |
	| 1		 | 1      | 0      |

Scenario Outline: Multiply
	And I enter any first input number <input1> into the calculator
	And I enter any second input number <input2> into the calculator
	When I press multiply
	Then the result should be equal to <result>
	Examples:
	| input1 | input2 | result |
	| 1      | -1     | -1     |
	| 1      | 0      | 0      |
	| 1		 | 1      | 1      |

Scenario Outline: Divide
	And I enter any first input number <input1> into the calculator
	And I enter a second input number that is not zero <input2> into the calculator
	When I press divide
	Then the result should be equal to <result>
	Examples:
	| input1 | input2 | result |
	| 1      | -1     | -1     |
	| 1      | 1      | 1      |
	
Scenario Outline: Modulo
	And I enter any first input number <input1> into the calculator
	And I enter a second input number that is not zero <input2> into the calculator
	When I press modulo
	Then the result should be equal to <result>
	Examples:
	| input1 | input2 | result |
	| 1      | -1     | 0      |
	| 1      | 1      | 0      |

Scenario Outline: Reciprocal
	And I enter a first input number that is not zero <input> into the calculator
	When I press reciprocal
	Then the result should be equal to <result>
	Examples:
	| input  | result |
	| 1      | 1      |
	| 2      | 0.5    |
	| -2     | -0.5	  |

Scenario Outline: Exponent
	And I enter any first input number <input1> into the calculator
	And I enter any second input number <exponent> into the calculator
	When I press exponent
	Then the result should be equal to <result>
	Examples:
	| input1 | exponent | result |
	| 1      | 2        | 1      |
	| 2      | 2        | 4      |
	| 3      | 2        | 9      |

Scenario Outline: SquareRoot
	And I enter a first input number that is zero or positive <input> into the calculator
	When I press squareroot
	Then the result should be equal to <result>
	Examples:
	| input | result |
	| 0     | 0		 |
	| 1     | 1		 |
	| 9     | 3		 |

Scenario: Divide cannot divide by zero error message
	And I enter a second input number of zero into the calculator
	When I press divide
	Then the result should display a division error message

Scenario: Modulo cannot divide by zero error message
	And I enter a second input number of zero into the calculator
	When I press modulo
	Then the result should display a division error message

Scenario: Reciprocal cannot divide by zero error message
	And I enter a first input number of zero into the calculator
	When I press reciprocal
	Then the result should display a division error message

Scenario: SquareRoot cannot accept negative numbers error message
	And I enter a first input number that is negative -1 into the calculator
	When I press squareroot
	Then the result should display an argument error message

Scenario: Divide cannot divide by zero error result
	And I enter a second input number of zero into the calculator
	When I press divide
	Then the result should not display a valid number

Scenario: Modulo cannot divide by zero error result
	And I enter a second input number of zero into the calculator
	When I press modulo
	Then the result should not display a valid number

Scenario: Reciprocal cannot divide by zero error result
	And I enter a first input number of zero into the calculator
	When I press reciprocal
	Then the result should not display a valid number

Scenario: SquareRoot cannot accept negative numbers error result
	And I enter a first input number that is negative -1 into the calculator
	When I press squareroot
	Then the result should not display a valid number

Scenario: SumOfEvenNumbers
	And I enter the numbers below into a list
	| numbers |
	| 1       |
	| 2       |
	| 3       |
	| 4       |
	| 5       |
	When I iterate through the list to select all even numbers
	And I add the selected numbers of the list together
	Then the result should be equal to 6

Scenario: SumOfOddNumbers
	And I enter the numbers below into a list
	| numbers |
	| 1       |
	| 2       |
	| 3       |
	| 4       |
	| 5       |
	When I iterate through the list to select all odd numbers
	And I add the selected numbers of the list together
	Then the result should be equal to 9