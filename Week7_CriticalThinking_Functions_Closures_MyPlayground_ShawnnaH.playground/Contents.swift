import UIKit

//Week 7 - Critical Thinking Exercise - Functions & Closures
//Assignment: Write a playground to do something useful for you in your daily life that contains the following items;
    // A function
    // A closure


//I would like to create a Softball Pitching program to track pitch count defining a function and calling it and calculate total pitch count with a closure.. maybe add something to calculate pitching speed and average speed based off the total pitch count or maybe count different types of pitches. TODO I want to include a random number generator and do something to calculate pitch speed or different pitch types.

// Create a Function to track pitch count
func trackPitchCount(pitchCount: Int) -> Int {
    var totalPitchCount = 0 // Define variable for Total Pitch Count
    totalPitchCount += pitchCount // Sums up The Total Pitches and is allowed here because it is globally defined

    // Control flow based on total pitch count
    if totalPitchCount < 85 {
        print("Keep practicing")
    } else if totalPitchCount >= 85 && totalPitchCount < 100 {
        print("You haven't met your daily target")
    } else {
        print("Don't wear out that arm, we have a game next week")
    }
    
    return totalPitchCount // Return total pitch count after the conditional checks
}

// Variable to keep track of the total pitch count defined globally
var totalPitchCount: Int = 0

// A Closure to update the pitch count and print the result
let updatePitchCount: (Int) -> Void = { pitchCount in
    totalPitchCount += pitchCount // Add to the total pitch count
    print("Total Pitch Count: \(totalPitchCount)")
}

// Call the closure with different pitch counts
updatePitchCount(50)  // Adds 50
updatePitchCount(45) // Adds another 45 to bring to 95
updatePitchCount(25) // Adds another 25 to bring to 120

// Calling the function to see the total pitch count and evaluate progress
totalPitchCount = trackPitchCount(pitchCount: totalPitchCount)

// Final Pitch Count
print("Final Pitch Count: \(totalPitchCount)")
