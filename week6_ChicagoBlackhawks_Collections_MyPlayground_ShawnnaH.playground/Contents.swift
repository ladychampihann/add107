import UIKit
//Week 6 Critical Thinking Lab: The Chicago Blackhawks

//Week 6 Objectives:
//The objectives are to understand what Arrays are and how they are used, comprehend what Dictionaries are and some of their benefits, and grasp what Tuples are and when they might be used. This will be followed by completing individual labs on Arrays, Dictionaries, and Tuples. After that, a lab combining all three topics will be completed, and finally, a Critical Thinking Exercise will be performed to apply the new knowledge of Collections in practical scenarios.

//Assignment:
//Source: https://www.nhl.com/blackhawks/roster

//Create a dictionary of team members using their number as the key value
// To simplify the processs I learned you can can use Tuples for multiple values in the dictionary.

//Dictionary of players with jersey number as key and name as value per assignment instructions
let blackhawksRoster: [Int: String] =
  [89: "Andreas Athanasiou", //aligned one by one for readability
   98: "Connor Bedard",
   59: "Tyler Bertuzzi",
   28: "Colton Dach",
   16: "Jason Dickinson",
   8: "Ryan Donato",
   17: "Nick Foligno",
   23: "Philipp Kurashev",
   77: "Patrick Maroon",
   95: "Ilya Mikheyev",
   91: "Frank Nazar",
   73: "Lukas Reichel",
   84: "Landon Slaggert",
   15: "Craig Smith",
   86: "Teuvo Teravainen",
   78: "TJ Brodie",
   46: "Louis Crevier",
   38: "Ethan Del Mastro",
   44: "Wyatt Kaiser",
   25: "Alec Martinez",
   5: "Connor Murphy",
   72: "Alex Vlasic",
   30: "Spencer Knight",
   34: "Petr Mrazek",
   40: "Arvid Soderblom"
  ]

//Create as many other arrays as needed to store the rest of the info
//TODO is there a way to connect a unordered dictionary to multiple arrays..how to do this the right way?

//Added an Array of playerNumbers
let playerNumber: [Int] = [
    89, 98, 59, 28, 16, 8, 17, 23, 77, 95, 91, 73, 84, 15, 86, 78, 46, 38, 44, 25, 5, 72, 30, 34, 40
]

//Add Array of playerName
let playerName: [String] = ["Andreas Athanasiou", "Connor Bedard", "Tyler Bertuzzi", "Colton Dach", "Jason Dickinson", "Ryan Donato", "Nick Foligno", "Philipp Kurashev", "Patrick Maroon", "Ilya Mikheyev", "Frank Nazar", "Lukas Reichel", "Landon Slaggert", "Craig Smith", "Teuvo Teravainen", "TJ Brodie", "Louis Crevier", "Ethan Del Mastro", "Wyatt Kaiser", "Alec Martinez", "Connor Murphy", "Alex Vlasic", "Spencer Knight", "Petr Mrazek", "Arvid Soderblom"
]

//Array of player's ages ordered
let playerAges: [Int] = [
    30, 19, 30, 22, 29, 28, 37, 25, 36, 30, 21, 22, 22, 35, 30, 34, 23, 22, 37, 31, 23, 23, 23, 33, 25
]

//Array of player's countries ordered in the same way as the dictionary
let playerCountries: [String] = [
    "CAN", "CAN", "CAN", "CAN", "CAN", "USA", "USA", "CHE", "USA", "RUS", "USA", "DEU", "USA", "USA", "FIN",
    "CAN", "CAN", "CAN", "USA", "USA", "USA", "USA", "USA", "USA", "CZE", "SWE"
]

//Array of player's height in inches ordered in the same way as the dictionary
let playerHeightInches: [Int] = [
    74, 70, 74, 76, 74, 72, 72, 72, 75, 74, 70, 72, 72, 73, 71, 74, 80, 76, 72, 73, 76, 78, 75, 74, 75
]

//Array of player's birth month ordered in same way as dictionary.
let playerBirthdayMonth: [Int] = [
    8, 7, 2, 1, 7, 4, 10, 10, 4, 10, 1, 5, 6, 9, 9, 6, 5, 1, 7, 7, 3, 6, 4, 2, 8
]

//Created an Empty Array for playerData
var playerData: [(playerNumber: Int, playerName: String, playerAge: Int, playerCountries: String, playerHeight: Int,playerBirthMonth: Int)] = []


//Using control flow statements do the following;
// Loop through the arrays and add each player's data as a tuple to the playerData array
for index in 0..<playerNumber.count { // range 0...
    let playerTuple = (
        playerNumber: playerNumber[index],
        playerName: playerName[index],
        playerAge: playerAges[index],
        playerCountries: playerCountries[index],
        playerHeight: playerHeightInches[index],
        playerBirthMonth: playerBirthdayMonth[index]
    )
    
    playerData.append(playerTuple)
}

//print(playerData)

//Create a list of players sorted by age
//
let playerSortedbyAge = playerData.sorted { $0.playerAge < $1.playerAge }


for player in playerSortedbyAge {
    print("\(player.playerName) is \(player.playerAge)")
}


//Create a list of players sorted by country
let playersSortedCountry = playerData.sorted { $0.playerCountries < $1.playerCountries }
//
for player in playersSortedCountry {
    print("Player \(player.playerNumber) is from \(player.playerCountries)")
}



//Calculate the average age of the players
//Create Variable for total TeamAge
var totalTeamAge = 0
for age in playerAges {
    totalTeamAge += age // using += to add all the ages from the Array
}
playerAges.count // .count method to count number of players

let averageAgePlayer = (totalTeamAge/playerAges.count) // divide by number of players
print("The average age of the players on the team is ",averageAgePlayer)

//Calculate the average height of the players
var totalTeamHeight = 0
for height in playerHeightInches {
    totalTeamHeight += height
}

let averageHeightPlayer = (totalTeamHeight/playerHeightInches.count)
print("The average height of the players on the team in inches is",averageHeightPlayer)

// Also you can get max and min number from an array using .max or .min
playerHeightInches.max() // get max number from array
playerHeightInches.min() // get min number from array


//Determine the month in which most of the players birthday falls
var birthdayMonthCount: [Int: Int] = [:]

for month in playerBirthdayMonth {
    birthdayMonthCount[month, default: 0] += 1
}

if let mostFrequentMonth = birthdayMonthCount.max(by: { $0.value < $1.value }) {
    print("Month \(mostFrequentMonth.key) has the most birthdays with \(mostFrequentMonth.value) total birthdays that month.")
}

//Upload a video explaining your working code
//Upload your code to your Github repository and provide me a link
