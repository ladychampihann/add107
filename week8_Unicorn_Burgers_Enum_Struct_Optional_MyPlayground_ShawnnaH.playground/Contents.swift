import UIKit

//Lab: Bill's Burgers! "The Internet of Rings!"
//Using Enumerations, Structures, and Optionals
//Build a playground to prototype an interactive menu for my new gourmet burger bistro.
//Record a video of you demoing your working code
//Upload your code to Github and provide me with a link

//Bill's Burgers/Recipe
//Create the Ingredients and Directions for creating the Bill's Burgers Playground

//RECIPE
//INGREDIENTS
//Knowledge of Enumerations, Structures, and Optionals and pretty much everything else we learned so far
//Create Enumerations for the different groups of a Burger such as Bun, Toppings, Meat, etc.
//Use case for the different items in the groups (Toppings: lettuce, mustard, ketchup, etc.)
//Create Enumerations for types for different parts of the Menu, Drink, Sides, Toys.
//Create a Struct or Structure for your Burger Order
//Use Optionals for drink, side, special instructions, etc.
//Create a custom order using the Struct to lay it out
//Display the order with a print function
//Make it fun by adding a Surprise Toy to the Meal
//Use a func to help streamline other customer orders

//DIRECTIONS
//Use enum to define various ingredients or menu items (buns, toppings, patty, side, toy)
//Create a Struct to organize the components of each order.
//Use Optionals elements for drink, sides, and special instructions as these might change with each order.
//Create an instance of the Struct to use with a custom Order
//Display the order using the print function and using the correct syntax to display certain things.
//Add fun elements random number generator for the order number
//Add fun elements so the toy is randomly selected from the available options.
//If you use a func make sure to call the function.


//BURGERS LAB USING ENUM, STRUCT, OPTIONALS
//Unicorn Burger Bliss a gourmet burger joint featuring Unicorn themed toppings and burgers. Place a order and get a surpise toy with your meal.

//Using Enumerations for differnt types of ingredients for the gourmet burger
//Bun Types
enum BunType: String, CaseIterable {
    case RainbowBun = "Rainbow Bun"
    case BriocheBun = "Brioche Bun"
    case ToastedBun = "Toasted Bun"
    case StarShapedMiniBun = "Star Shaped Mini Bun"
}
//Topping Types
enum ToppingType: String, CaseIterable {
    case RedTomato = "Red Tomato"
    case OrangePepper = "Orange Pepper"
    case YellowMustard = "Yellow Mustard"
    case GreenLettuce = "Green Lettuce"
    case PurpleOnion = "Purple Onion"
    case EdibleGlitter = "Edible Glitter"
    case TruffleMayo = "Truffle Mayo"
    case UnicornCheese = "Unicorn Cheese"
    case GoldenBacon = "Golden Bacon"
    case GoldenMustard = "Golden Mustard"
    case CosmicKetchup = "Cosmic Ketchup"
}
//Patty Types
enum PattyType : String, CaseIterable {
    case BlueCheeseVeggieBurger = "Blue Cheese Veggie Burger"
    case GoldenBaconPatty = "Golden Bacon infused Patty"
    case StarShapedMiniPatty = "Star Shaped Mini Patty"
    case MushroomPatty = "Mushroom Patty"
}
//Drink Types
enum DrinkType: String, CaseIterable {
    case CloudJuice = "Cloud Juice"
    case RainbowLemonade = "Rainbow Lemonade"
    case CottonCandyFizz = "Cotton Candy Fizz"
    case MagicalMilkShake = "Magical Milk Shake"
}
//Side Types
enum SideType: String, CaseIterable {
    case RainbowFries = "Rainbow Fries"
    case GoldenRings = "Golden Rings"
    
}
//Toy Types
enum ToyType: String, CaseIterable {
    case SwiftDebuggingKit = "Swift Debugging Kit"
    case MagicCodeBuilder = "Magic Code Builder"
    case PerfectCodePotion = "Perfect Code Potion"
    case SyntaxShield = "Syntax Shield"
}

// print random toy to console
//// I want to make the Toy to be a surprise like a Happy Meal I found the randomElement() to do this
//if let randomToy = ToyType.allCases.randomElement() {
//    print("Your random toy is: \(randomToy.rawValue)")
//} else {
//    print("No toys available.")
//}

// Using Struct to Structure the Order
struct UnicornBurgerBlissOrder {
    let bun: BunType
    let patty: PattyType
    let toppings: [ToppingType] //Array for multiple toppings
    let drink: DrinkType? //Using Optionals
    let side: SideType? //Using Optionals
    let toy: ToyType? //Using Optionals
    let specialInstructions: String?
}
    
//Rainbow Veggie Burger Meal Custom Order Using Struct
let RainbowVeggieBurgerMeal = UnicornBurgerBlissOrder (
    bun: .RainbowBun,
    patty: .BlueCheeseVeggieBurger,
    toppings: [.RedTomato, .YellowMustard, .OrangePepper, .GreenLettuce, .PurpleOnion, .EdibleGlitter],
    drink: nil, // No Drink
    side: .RainbowFries,
    toy: ToyType.allCases.randomElement(), // Chooses a random toy
    specialInstructions: "Please add extra glitter!"
)

//Magical Mushroom Melt
let MagicalMushroomMeltMeal = UnicornBurgerBlissOrder (
    bun: .BriocheBun,
    patty: .MushroomPatty,
    toppings: [.TruffleMayo, .UnicornCheese, .EdibleGlitter],
    drink: .CottonCandyFizz,
    side: .GoldenRings,
    toy: ToyType.allCases.randomElement(),
    specialInstructions: nil // None
)

let GoldenBaconBurgerMeal = UnicornBurgerBlissOrder (
    bun: .RainbowBun,
    patty: .BlueCheeseVeggieBurger,
    toppings: [.RedTomato, .YellowMustard, .OrangePepper, .GreenLettuce, .PurpleOnion, .EdibleGlitter],
    drink: .MagicalMilkShake,
    side: .RainbowFries,
    toy: ToyType.allCases.randomElement(),
    specialInstructions: "I want the golden bacon extra crispy!" //
)

let StardustSlidersMeal = UnicornBurgerBlissOrder (
    bun: .StarShapedMiniBun,
    patty: .StarShapedMiniPatty,
    toppings: [.UnicornCheese, .EdibleGlitter, .CosmicKetchup],
    drink: .CloudJuice,
    side: nil,
    toy: ToyType.allCases.randomElement(),
    specialInstructions: "I want extra ice in my cloud juice!"
)
    
// Had to use ChatGPT here to figure out how to make the toppings look nicer
//let rainbowToppings = RainbowVeggieBurgerMeal.toppings.map { $0.rawValue }.joined(separator: ", ")


// Function to generate a random order number using a range
func generateRandomOrderNumber() -> Int {
    return Int.random(in: 100000...900000) //this is random I should do something the counts upward for a real world scenario
}

// Do I need a function to generate the surprise Toy?

//For different orders you should create a func to streamline order printing
func printBlissOrder( order: UnicornBurgerBlissOrder) {
    //calling the random order number function
    let orderNumber = generateRandomOrderNumber()
    let toppings = order.toppings.map { $0.rawValue }.joined(separator: ", ") //to list the multiple toppings
    print("\n🦄✨ Thank you for Ordering off the Unicorn Burger Bliss Menu ✨🦄")
    print("""
          Your Order #\(orderNumber) has been confirmed!
          Your Order Details:
                     [Bun]: \(order.bun.rawValue)
                   [Patty]: \(order.patty.rawValue)
                [Toppings]: \(toppings)
                   [Drink]: \(order.drink?.rawValue ?? "No Drink")
                    [Side]: \(order.side?.rawValue ?? "No Side")
                     [Toy]: \(order.toy?.rawValue ?? "No Toy")
    [Special Instructions]: \(order.specialInstructions ?? "None")
    """)
    print("🦄✨ We hope you have a magical time eating! Come back Soon! 🍔 ✨🦄")
}

// Call the function to print the different orders. Notice the random order number and toy, note the optionals for drink, side, toy, special instructions.
// same toy is generated when printing the same meal maybe I need a function for this
printBlissOrder(order: RainbowVeggieBurgerMeal) //No Drink, Rainbow Fries & Special Instructions
printBlissOrder(order: RainbowVeggieBurgerMeal) //same toy is generated because i didn't use a function?
printBlissOrder(order: MagicalMushroomMeltMeal) //Cotton Candy Drink, Golden Rings, Special Instructions None using nil
printBlissOrder(order: GoldenBaconBurgerMeal) // Special Instructions None
printBlissOrder(order: StardustSlidersMeal) //No Side








//----------------------------------------------------------

//CODE I WANT TO SAVE BUT NOT USED
//print("\n🦄✨ Thanks for Ordering off the Unicorn Burger Bliss Menu ✨🦄\n")
//print("""
//      Your Rainbow Veggie Burger Meal has been Confirmed!
//      Your Order Details:
//                 [Bun]: \(RainbowVeggieBurgerMeal.bun.rawValue)
//               [Patty]: \(RainbowVeggieBurgerMeal.patty.rawValue)
//            [Toppings]: \(rainbowToppings)
//               [Drink]: \(RainbowVeggieBurgerMeal.drink?.rawValue ?? "No Drink")
//                [Side]: \(RainbowVeggieBurgerMeal.side?.rawValue ?? "No Side")
//                 [Toy]: \(RainbowVeggieBurgerMeal.toy?.rawValue ?? "No Toy")
//[Special Instructions]: \(RainbowVeggieBurgerMeal.specialInstructions ?? "None")
//
//""")
//print("\n🦄✨ We hope you have a magical day! ✨🦄\n")

////Magical Mushroom Melt
//let MagicalMushroomMeltMeal = UnicornBurgerBlissOrder (
//    bun: .BriocheBun,
//    patty: .MushroomPatty,
//    toppings: [.TruffleMayo, .UnicornCheese, .EdibleGlitter],
//    drink: .CottonCandyFizz,
//    side: .GoldenRings,
//    toy: .SwiftDebuggingKit,
//    notes: "I want the mushroom patty extra gooey!"
//)
//
//let GoldenBaconBurgerMeal = UnicornBurgerBlissOrder (
//    bun: .RainbowBun,
//    patty: .BlueCheeseVeggieBurger,
//    toppings: [.RedTomato, .YellowMustard, .OrangePepper, .GreenLettuce, .PurpleOnion, .EdibleGlitter],
//    drink: .MagicalMilkShake,
//    side: .RainbowFries,
//    toy: .PerfectCodePotion,
//    notes: "I want the golden bacon extra crispy!"
//)
//
//let StardustSlidersMeal = UnicornBurgerBlissOrder (
//    bun: .StarShapedMiniBun,
//    patty: .StarShapedMiniPatty,
//    toppings: [.UnicornCheese, .EdibleGlitter, .CosmicKetchup],
//    drink: .CloudJuice,
//    side: .RainbowFries,
//    toy: .SyntaxShield,
//    notes: "I want extra ice in my cloud juice!"
//)
////Optional Binding if let to check if drink has a value
//if let drink = RainbowVeggieBurgerMeal.drink {
//    print("Your drink is \(drink.rawValue)")
//}    else {
//        print ("No drink selected")
//}

//let magicalToppings = MagicalMushroomMeltMeal.toppings.map { $0.rawValue }.joined(separator: ", ")
//let goldenToppings = GoldenBaconBurgerMeal.toppings.map { $0.rawValue }.joined(separator: ", ")
//let starToppings = StardustSlidersMeal.toppings.map { $0.rawValue }.joined(separator: ", ")

//print("""
//
//      Your Magical Mushroom Melt Meal has been Confirmed!
//      Your Order Details:
//           [Bun]: \(MagicalMushroomMeltMeal.bun)
//         [Patty]: \(MagicalMushroomMeltMeal.patty)
//      [Toppings]: \(magicalToppings)
//         [Drink]: \(MagicalMushroomMeltMeal.drink)
//          [Side]: \(MagicalMushroomMeltMeal.side)
//           [Toy]: \(MagicalMushroomMeltMeal.toy)
//""")
//
//print("""
//
//      Your Golden Bacon Burger Meal has been Confirmed!
//      Your Order Details:
//           [Bun]: \(GoldenBaconBurgerMeal.bun)
//         [Patty]: \(GoldenBaconBurgerMeal.patty)
//      [Toppings]: \(goldenToppings)
//         [Drink]: \(GoldenBaconBurgerMeal.drink)
//          [Side]: \(GoldenBaconBurgerMeal.side)
//           [Toy]: \(GoldenBaconBurgerMeal.toy)
//""")
//
//print("""
//
//      Your Star Shaped Sliders has been Confirmed!
//      Your Order Details:
//           [Bun]: \(StardustSlidersMeal.bun)
//         [Patty]: \(StardustSlidersMeal.patty)
//      [Toppings]: \(starToppings)
//         [Drink]: \(StardustSlidersMeal.drink)
//          [Side]: \(StardustSlidersMeal.side)
//           [Toy]: \(StardustSlidersMeal.toy)
//""")
//


