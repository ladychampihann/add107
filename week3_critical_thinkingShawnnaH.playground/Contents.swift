import UIKit

//var greeting = "Hello, playground"

//1) Design a program that uses what you learned about Constants and Variables creatively.
//
//2) Commit the app you just created to your repository and provide me with a link to it for credit.
//
//3) Record a brief video using Panopto demoing and explaining your app.
//
//4) Use the naming convention I described previously.
//

//This is a simple program that uses Constants and Variables.

// Here I have defined a constants using the let keyword as a failGrade will always stay constant
let failGrade = 59

// Here I have defined a variable using the var keyword as your test score changes.
var testScore: Int = 81 // change this number to add different scores and declare the data type as an Interger

// Using if else statements print the grade
if testScore > 80 {
    print("Grade: B")
} else if testScore >= 70 {
    print("Grade: C")
} else if testScore >= 60 {
    print("Grade: D")
} else if testScore <= failGrade {
    print("Grade: F")
}

// Here I have added a constant
let passingGrade = 70

// Here I have changed the variable again
testScore = 60 //change it to less than 70 to see the else statment print

// Using a if statement to print the comment below
if testScore > passingGrade {
    print("You passed the Test! Congrats!")
}
else {
    print("Better luck next time")
}
