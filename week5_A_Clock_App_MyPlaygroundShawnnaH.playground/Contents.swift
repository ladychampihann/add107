//Critical Thinking Exercise: Flow Exercise
//Assignment: Design A Clock App
//Objective: Design a Playground that simulates a working clock that keeps track of hours minutes and seconds


//Original Clock Recipe Copy & Paste

//Ingredients:
//What You Need to Create A Clock App

    //Clock Display
    //Variables for hours, minutes, and seconds
    //Ability to Read the Clock
    //Clock Format and Style
    //Constants like hour hand, minute hand, and second hand.
    //A Loop statement to keep Time
    //An Experienced Coder


//Directions:
//Steps to Create the Clock App
    //Step 1: Create a Clock Display where time can be displayed
    //Step 2: Create Variables for hours, minutes, and seconds
    //Step 3: Read the Clock and get currentTime
    //Step 4: Create a Clock Format and Style
        //Choose 12-hour or 24-hour format
        //Choose style digital or analog
    //Step 5: Create Constants like hour hand, minute hand, and second hand.
    //Step 6: Use a Loop statement to keep Time ticking
    //Step 7: Have an Experienced Coder create code in Swift

//Define Variables
var hours: Int = 24
var minutes: Int = 58
var seconds: Int = 59

let currentTime = (hours, minutes, seconds)
    if hours > 12 {
        print("Current Time: \(hours - 12):\(minutes):\(seconds) PM")
        print(" ")
}
    else {
    print("\(hours):\(minutes):\(seconds) AM")

}


//Use of if, else if and else statement
let deadlineTime = (24, 00, 00)

if currentTime < deadlineTime {
    print("You still have time to complete this assignment!")
} else if currentTime == deadlineTime {
    print("Your time is up!")
} else {
    print("💥 ERROR: CLOCK APP FAILURE💥 \n\nGROWTH MINDSET: ACTIVATED 💪 \nHELP MODULE: REQUESTED 🆘\nSECOND ATTEMPT: SCHEDULED FOR TOMORROW 🙏")
}

