import UIKit

//Week 7 Lab: Fibonacci Numbers

//Week Obectives:
//Understand what Functions are and the 6 easy steps to define them.
//Understand what Closures are and the steps to define them.
//Apply your your Knowledge.

//COPY & PASTE----------------------------------
//Week 7 Recipe: Fibonacci Numbers

//Ingredients:
//A Coding Student
//Knowledge of Fibonacci Equation F(n)=F(n−1)+F(n−2)
//Basic Knowledge of Fibonacci Sequence to check for errors in code (e.g. 0,1,1,2,3,5,8,13,21…)
//Knowledge of Swift Functions
//Define a Function func calcFibonacciTo1000
//Call the Function usually at the bottom of your code but don’t forget this
//Define a Variable for Fibonacci Sequence and initialize an Array (var fibonaccSequenceArray)
//Use a Control Statement or Loop to repeat through the function
//Append numbers to your Array using the .append method or +=
//Use a Break statement or Else statement when the loop reaches to 1000
//Use Print statement to display Array

//Directions:
//To calculate Fibonacci numbers up to 1000 in Swift, start by defining a function called calcFibonacciTo1000. Within this function, initialize an array to store the Fibonacci sequence, beginning with the first two numbers, 0 and 1. Use a while loop to repeatedly calculate the next Fibonacci number by adding the last two numbers in the array. After each calculation, append the new Fibonacci number to the array. The loop should continue until the next Fibonacci number exceeds 1000, at which point the loop will terminate using a break statement. Finally, use a print statement to display the Fibonacci sequence stored in the array.
//-------------------------------------------------------------------


//STEP 1) Write a function that calculates and displays all the Fibonacci numbers from 0 to 1000
func calcFibonacciTo1000() {
    var fibonacciSequenceArray: [Int] = [] // Initialize an empty array to store the Fibonacci sequence
    var fibonacciFirstNum = 0 // First Fibonacci number
    var fibonacciSecondNum = 1 // Second Fibonacci number
    
    // Add the first two Fibonacci numbers to the array
    fibonacciSequenceArray += [fibonacciFirstNum, fibonacciSecondNum] // Array now contains [0, 1]
    
    // Initialize the next Fibonacci number Third Fibonacci number
    var fibonacciNextNum = fibonacciFirstNum + fibonacciSecondNum
print("Knock Knock..Who's There?")
    // Use the While Loop to Calculate and append Fibonacci numbers until 1000
    while fibonacciNextNum < 1001 {
        
        // Now Append the next Fibonacci number to the array
        fibonacciSequenceArray += [fibonacciNextNum] // The While Loop continues until 1000
        
        // Update the first and second Fibonacci numbers in one step
        (fibonacciFirstNum, fibonacciSecondNum) = (fibonacciSecondNum, fibonacciNextNum)
        
        // Calculate the next Fibonacci number
        fibonacciNextNum = fibonacciFirstNum + fibonacciSecondNum
        print("Looping Please Wait....")
    }

print("\nKnock Knock.. Who's There?")
print("Aren't you glad I stopped Looping... or this joke would go on forever!")
print("Let's get the results printed...")
    
    // Display the Fibonacci Sequence Array
    print("\nFibonacci Sequence Array:")
    print(fibonacciSequenceArray)
}

// Call the function
calcFibonacciTo1000()

