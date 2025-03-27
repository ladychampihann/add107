import UIKit

//My 2025 Toyota Prius Options Lab

//Recipe

//Create Enumerations for the different types/groups
// Use Pascal case for enum and use camelCase for the cases
enum DriveTrain: String {
    case frontWheelDrive = "FWD"
    case allWheelDrive = "AWD"

}

enum PriusTrim: String {
    case trimLE = "LE"
    case trimXLE = "XLE"
    case trimSE = "SE"
    case nightshadeEdition = "Nightshade Edition"
    case limited = "Limited"
    
}

enum ExteriorColor: String {
    case karashi = "Karashi"
    case cuttingEdge = "Cutting Edge"
    case guardianGray = "Guardian Gray"
    case midnightBlackMetallic = "Midnight Black Metallic"
    case supersonicRed = "Supersonic Red"
    case windChillPearl = "Wind Chill Pearl"
    case reservoirBlue = "Reservoir Blue"
}

enum InteriorColor: String {
    case ltGrey = "LT Grey"
    case gradientBlack = "Gradient Black"

}

enum PriusPackages: String {
    case digitalKey = "Digital Key"
    case xlMultimedia = "12.3 inch Toyoto Audio Multimedia"
    case glassRoof = "Fixed Glass Roof"
    case parkingAssist = "Front and Rear Parking Assist with Auto Braking"
    case limitedPremium = "Limited Premium Package"
    case heatedSeats = "Heated Seats"
}
    
enum PriusAccessories: String {
    case allWeatherFloors = "All Weather Floor Liner Package"
    case carpetMat = "Carpet Mat Package"
    case preferredAllWeatherPackage = "Preferred Accessory Package with All Weather"
    case preferredCarpetPackage = "Preferred Accessory Package with Carpet"
    case protectionPackage3 = "Protection Package 3"
}

enum SuperRareAddOns: String {
    case swiftSteeringWheel = "Swift Steering Wheel"
    case swiftCodeFloorMat = "Swift Code Floor Mat"
    case swiftKeychain = "Swift Keychain"
    case swiftVinylWrap = "Swift Vinyl Wrap"
}
//Create the structure to build your prius using struct which is the blueprint of the order
struct BuildYourPrius {
    let drive: DriveTrain
    let trim: PriusTrim
    let extColor: ExteriorColor
    let intColor: InteriorColor
    let packages: [PriusPackages]? //Optionals
    let accessories: [PriusAccessories]? //Optionals
    let superRareAddOns: [SuperRareAddOns]? //Optionals
    
}
//Create an instance of BuildYourPrius struct
let swiftStudentPrius = BuildYourPrius(
    drive: .allWheelDrive,
    trim: .limited,
    extColor: .midnightBlackMetallic,
    intColor: .gradientBlack,
    packages: [.digitalKey, .glassRoof, .heatedSeats, .limitedPremium],
    accessories: [.preferredAllWeatherPackage, .protectionPackage3],
    superRareAddOns: [.swiftSteeringWheel, .swiftKeychain, .swiftVinylWrap, .swiftCodeFloorMat]
    )
//Create another instance of BuildYourPrius struct
let mypriusorder = BuildYourPrius(
    drive: .frontWheelDrive,
    trim: .trimXLE,
    extColor: .supersonicRed,
    intColor: .ltGrey,
    packages: [.digitalKey, .glassRoof],
    accessories: [.preferredAllWeatherPackage],
    superRareAddOns: nil //no add-ons
    )

// Define a class to track Prius orders
// I am using a class because I want to use it to store and print orders and create the methods that store and print the data.
class PriusOrdersTracker {
    private var orders: [BuildYourPrius] = [] // the list is private and can only be accessed by the methods inside PriusOrdersTracker

    // Method to the order using a storeOrder func
    func storeOrder(order: BuildYourPrius) {
        orders.append(order) //.append to append the order
//        print("Congrats! .Your 🚗 Prius order has been confirmed!") //I decided not to use this
    }

    // Method to print stored orders
    func printStoredOrders() {
        if orders.isEmpty {
            print("No orders have been placed yet.")
            return
        }
        
        print("All Stored Prius 🚗 Orders:")
        for (index, order) in orders.enumerated() {
            print("""
            \nOrder #\(index + 1): \(order.extColor.rawValue) \(order.trim.rawValue) \(order.drive.rawValue)
                  Interior: \(order.intColor.rawValue)
                  Packages: \(order.packages?.map { $0.rawValue }.joined(separator: ", ") ?? "None")
               Accessories: \(order.accessories?.map { $0.rawValue }.joined(separator: ", ") ?? "None")
                   Add Ons: \(order.superRareAddOns?.map { $0.rawValue }.joined(separator: ", ") ?? "None")
            """)
        }
    }
}

// Create an instance of the order tracker
let tracker = PriusOrdersTracker()

// Store both Prius builds
tracker.storeOrder(order: swiftStudentPrius)
tracker.storeOrder(order: mypriusorder)

// Print all stored orders
tracker.printStoredOrders()
