import UIKit

//Week 6 - Critical Thinking Exercise/ Collections
//Objective: Apply new knowledge of Collections

//Write the code to organize and extract some data from a collection of items you have at home.
//Use at least one dictionary and one array

// Created a Dictionary named myUnicornCollection
var myUnicornCollection: [String: String] = [
    "Golden Hibiki":"Hibiki",
    "Luna Mist": "Papo",
    "Aurora Sparkle": "Breyer",
    "Moonwhisper": "Safari Ltd.",
    "Starfire" : "Mojo Fun",
    "Silverwind" : "CollectA",
    "Glitterhoof" : "Bullyland",
    "Rainbelle": "Breyer",
    "Mystic Dawn" : "Swarovski",
    "Stardust" : "Funko Pop",
    "Velvet Sky" : "Unknown",
    "Moonbeam" : "Handmade",
    "Elysia" : "Lenox",
    "Crystal Dream" : "Made in China",
    "Solara" : "Sanrio"
]
//Print Dictionary to Console
//print(myUnicornCollection)

//Accessing all keys in my dictionary
var allkeys = [String](myUnicornCollection.keys)
//print(allkeys)
print("Count Keys: ", allkeys.count)


//Accessing all values in my dictionary
var allvalues = [String](myUnicornCollection.values)
//print(allvalues)
print("Count Values: ", allvalues.count)

//Accessing Value from Specific Key
myUnicornCollection ["Golden Hibiki"]
myUnicornCollection ["Stardust"]

//Check to See if Specific Key exists
myUnicornCollection.keys.contains("Golden Hibiki")
myUnicornCollection.keys.contains("Stardust")

//Adding Key and Value Pairs to my collection
myUnicornCollection["Rainbow Attack"] = "Hibiki"
myUnicornCollection["The Swift Unicorn"] = "Swift"
myUnicornCollection["Unicorn Tears"] = "Software Developer"

//Recounting Keys to Show Items added
var updatedkeys = [String](myUnicornCollection.keys)
print("Updated Key Count: ", updatedkeys.count)

print("\n")
print("Here is my updated collection:")
print(myUnicornCollection)
print("\n")


//Here I made an array of my Unicorn and the styles or positions the figurine is in.
var myUnicornStyle: [String] = ["Standing","Rearing", "Sitting", "Lying Down", "Trotting", "Jumping", "Prancing", "Lying with Foal", "Crystal Figurine", "Cartoon Style", "Antique Style", "Wooden Carving", "Porcelain Figurine", "LED Light-up", "Sleeping Unicorn"]

// Here I sorted the styles this will sort A to Z
var myUnicornStyleSorted: [String] = myUnicornStyle.sorted()
//print(myUnicornStyleSorted)

//Here I printed the styles one by one
for style in myUnicornStyleSorted {
    print(style)
}


//Here I made an array of my Unicorns and the colors of each one in the collection
//I listed verticaly for improved readability
var myUnicornColor: [String] = [
    "White w/ Gold",
    "Pink & Silver",
    "Blue & White",
    "Purple & Gold",
    "Black & Silver",
    "Rainbow",
    "White & Pink",
    "Lavender & Gold",
    "Clear",
    "Pastel Rainbow",
    "Bronze",
    "Natural Wood",
    "White & Gold Trim",
    "Multicolor",
    "Pink & White"
]

// Using .contains is case sensitive
var rainbowUnicorn = myUnicornColor.contains("Rainbow")
print("\n")
print("Is there a Rainbow Unicorn in my Collection? ", rainbowUnicorn)

//
var rainbowUnicornCount = 0
for color in myUnicornColor {
    if color.contains("Rainbow") {
        rainbowUnicornCount += 1
    }
}
print("How many Unicorns are Rainbow colored? ",rainbowUnicornCount)

// myUnicornColor Array sorted alphabetically
myUnicornColor.sort()

// Array for prices
var myUnicornPrice: [Double] = [
    1000.00,
    15.50,
    10.00,
    9.75,
    14.25,
    13.00,
    11.80,
    16.40,
    50.00,
    18.99,
    35.00,
    22.50,
    45.99,
    20.00,
    17.99
]

var totalUnicornPriceCount = myUnicornPrice.count

//Define a Variable for Total Price
var totalUnicornPrice: Double = 0

// For statement with += to add the sum
for price in myUnicornPrice {
    totalUnicornPrice += price
}

// Define a Variable and Calculate average price per a Unicorn
var averagePricePerUnicorn = totalUnicornPrice / Double(totalUnicornPriceCount)

print("\n")
print("The Total Cost for my Unicorn Collection is: $", totalUnicornPrice)
print("The approximate average is",Int(averagePricePerUnicorn),"dollars per a Unicorn")
print("\n")
print("Thanks and Have a Sparkly Day!")

//Upload a video explaining your working code.
//Upload code to your Github repository and provide me a link

