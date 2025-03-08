import UIKit

//Week 6 Critical Thinking Lab: The Chicago Blackhawks

//Week 6 Objectives:
//The objectives are to understand what Arrays are and how they are used, comprehend what Dictionaries are and some of their benefits, and grasp what Tuples are and when they might be used. This will be followed by completing individual labs on Arrays, Dictionaries, and Tuples. After that, a lab combining all three topics will be completed, and finally, a Critical Thinking Exercise will be performed to apply the new knowledge of Collections in practical scenarios.

//Assignment:
//Source: https://www.nhl.com/blackhawks/roster

//Create a dictionary of team members using their number as the key value
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
var playerAges: [Int] = [
    30, 19, 30, 22, 29, 28, 37, 25, 36, 30, 21, 22, 22, 35, 30, 34, 23, 22, 37, 31, 23, 23, 23, 33, 25
]

var playerCountries: [String] = [
    "CAN", "CAN", "CAN", "CAN", "CAN", "USA", "USA", "CHE", "USA", "RUS", "USA", "DEU", "USA", "USA", "FIN",
    "CAN", "CAN", "CAN", "USA", "USA", "USA", "USA", "USA", "USA", "CZE", "SWE"
]

var playerHeightInches: [Int] = [
    74, 70, 74, 76, 74, 72, 72, 72, 75, 74, 70, 72, 72, 73, 71, 74, 80, 76, 72, 73, 76, 78, 75, 74, 75
]

var playerBirthdayMonth: [Int] = [
    8, 7, 2, 1, 7, 4, 10, 10, 4, 10, 1, 5, 6, 9, 9, 6, 5, 1, 7, 7, 3, 6, 4, 2, 8
]
//let playerBirthdays: [Int: String] = [
//    89: "8/6/1994", 98: "7/17/2005", 59: "2/24/1995", 28: "1/4/2003", 16: "7/4/1995",
//    8: "4/9/1996", 17: "10/31/1987", 23: "10/12/1999", 77: "4/23/1988", 95: "10/10/1994",
//    91: "1/14/2004", 73: "5/17/2002", 84: "6/25/2002", 15: "9/5/1989", 86: "9/11/1994",
//    78: "6/7/1990", 46: "5/4/2001", 38: "1/15/2003", 44: "7/31/2002", 25: "7/26/1987",
//    5: "3/26/1993", 72: "6/5/2001", 30: "4/19/2001", 34: "2/14/1992", 40: "8/19/1999"
//]
//
//let playerAges: [Int: Int] = [
//    89: 30, 98: 19, 59: 30, 28: 22, 16: 29, 8: 28, 17: 37, 23: 25, 77: 36, 95: 30,
//    91: 21, 73: 22, 84: 22, 15: 35, 86: 30, 78: 34, 46: 23, 38: 22, 44: 22, 25: 37,
//    5: 31, 72: 23, 30: 23, 34: 33, 40: 25
//]
//
//let playerCountries: [Int: String] = [
//    89: "CAN", 98: "CAN", 59: "CAN", 28: "CAN", 16: "CAN", 8: "USA", 17: "USA", 23: "CHE",
//    77: "USA", 95: "RUS", 91: "USA", 73: "DEU", 84: "USA", 15: "USA", 86: "FIN", 78: "CAN",
//    46: "CAN", 38: "CAN", 44: "USA", 25: "USA", 5: "USA", 72: "USA", 30: "USA", 34: "CZE",
//    40: "SWE"
//]
//
//let playerHeightsInches: [Int: Int] = [
//    89: 74, 98: 70, 59: 74, 28: 76, 16: 74, 8: 72, 17: 72, 23: 72, 77: 75, 95: 74,
//    91: 70, 73: 72, 84: 72, 15: 73, 86: 71, 78: 74, 46: 80, 38: 76, 44: 72, 25: 73,
//    5: 76, 72: 78, 30: 75, 34: 74, 40: 75
//]
//Using control flow statements do the following;

//Create a list of players sorted by age
var playersSortedByAge = playerAges.sort()






//Create a list of players sorted by country

//Calculate the average age of the players

//Calculate the average height of the players

//Determine the month in which most of the players birthday falls

//Upload a video explaining your working code

//Upload your code to your Github repository and provide me a link
