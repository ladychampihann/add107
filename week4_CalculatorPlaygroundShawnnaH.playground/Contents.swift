import UIKit

// Operator Lab Exercise Assignment: Calculator Playground start date 02-15-2025

    //Objective:
        //Create a calculator playground and break it into 3 sections.
        //The top section defines all your input variables
        //The middle section defines all the operations
        //The bottom section prints all thom section prints all the results to the screen
        //Have the calculator perform the following operations on your variables;
        //Add/Subtract/Multiply/Divide/Percentages
        //Upload a link to your panopto video demoing your working code.
        //Upload a link to your repository.


//Candy Bar Calculator Playground
// SECTION 1: Define Variables & Inputs
let oneDollarBill = 1.00 // Represents 1 dollar bill
let quarterCoin = 0.25 // Represents 1 quater
let pennyCoin = 0.01 // Represents 1 penny
var candyDiscount = 0.50 // Represents a .50 cent discont
var taxRate = 0.06 // Represents Tax Rate
var candyQuanityBought = 5.00 // Represent number of candy bars bought
var numberofPeople = 3.00 // Represents 3 people sharing the candy bars

//SECTION 2: Define Operations
//Arithmetic Operators (+, -, *, /)

//Addition:
let candyTotalBeforeTax = oneDollarBill + quarterCoin + pennyCoin

//Substraction:
let candyTotalWithDiscount = candyTotalBeforeTax - candyDiscount

//Multiplication:
let totalCost = candyQuanityBought * candyTotalWithDiscount * (1 + taxRate)

//Division:
let candyPerPerson = candyQuanityBought / numberofPeople

//Percentage:
let remainderCandyBars = Int(candyQuanityBought) % Int(numberofPeople)

//Display Results

// Since we are dealing with prices I decided to format the double to string with .2f meaning to format 2 decimal places.

print(String(format: "Total Cost before Tax for (1 Candy Bar): \n$%.2f", Float(candyTotalBeforeTax)))
print(String(format: "Total Cost before Tax with Discount (1 Candy Bar): \n$%.2f",Float(candyTotalWithDiscount)))
print(String(format: "Total Cost of Bought Discounted Candy Bars with Tax: \n$%.2f", Float(totalCost)))
print(String(format: "Total Candy per Person: \n%.2f", Float(candyPerPerson)))
print("") // added a blank line to break up the display
print("Candy Bars Remaining After Spliting Evenly: \n\(remainderCandyBars) Candy Bars")
