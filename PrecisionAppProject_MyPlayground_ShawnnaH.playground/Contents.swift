
import SwiftUI
import Foundation
// TODO: Add SQLite3 import and implement local database logic for storing user data (e.g., Team Member Lists, User Profiles) in later stages of the app.
//import SQLite3

// MARK: - PROJECT HEADER - PRECISION LEAD
// FINAL PROJECT - WELCOME TO PRECISION LEAD - POWERED BY SHAWNNA HANN (@LADYCHAMPIHANN)
// -------------------------------------------------------------------------------------------------------------
/* BRIEF SUMMARY:
Precision Lead (Beta) v.1.0 is a simple leadership app for players/team members and coaches/team managers
to organize teams, add and edit notes, assign tasks to members, generate motivational quotes with a click,
and access a simple in app team tools such as a stopwatch and countdown timer.
 */
/* OBJECTIVES:
1) APPLY MY NEWLY ACQUIRED SWIFT PROGRAMMING SKILLS TO DEVELOP A FUNCTIONAL AND ENGAGING APP
2) DEMONSTRATE MY UNDERSTANDING OF CORE SWIFT CONCEPTS COVERED IN MASTERING SWIFT 5.3 SIXTH EDITION BY JON HOFFMANN
USE MARK: - TO HIGHLIGHT CONCEPTS OR FEATURES
    A) Variables (var) and Constants (let),
    B) Strings and Operators,
    C) Optional Types and Optional Chaining,
    D) Collections: Arrays ([]), Dictionaries ([:]), Sets,
    E) Control Flow: Conditional Statements (if, guard, switch),
    F) Loops: for-in, while, case with where,
    G) Control Transfer Statements: continue, break, fallthrough,
    H) Functions (func),
    I) Enumerations (enum),
    J) Classes (class), Structures (struct), Inheritance,
    K) Protocols (protocol),
    L) Properties and Methods,
    M) Property Wrappers (@propertyWrapper).
USE TODO: AS A REMINDER TO COMPLETE A TASK LATER
USE FIXME: TO NOTE IF SOMETHING IS BROKEN
*/

// MARK: - LOGIN SCREEN
// -------------------------------------------------------------------------------------------------------------
// GOALS: Design functional pass through buttons as I currently don't have knowledge how to set up users.

// Standard Welcome Greeting
//let welcomeGreeting = "Welcome to the Precision Lead App!"
//print(welcomeGreeting)

// Fun Welocome Greeting
let welcomeGreeting = "Welcome to the Precision Lead App!"
let border = String(repeating: "*", count: welcomeGreeting.count + 6)

print(border)
print("*  \(welcomeGreeting)  *")
print(border)

// Precision Lead Logo

// Let's Get Started - Button

// Learn More - Button

// Possible User Struct for SQLite implementation.
struct User: Identifiable {
    var id: UUID
    var username: String
    var passwordHash: String
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
    var dateOfBirth: Date
    var createdAt: Date
    var updatedAt: Date
}

// MARK: - HOME DASHBOARD SCREEN
// -------------------------------------------------------------------------------------------------------------
// GOALS: Design functional buttons for the core features

// TEAM HUB - Button

// GAME DAY QUOTE - Button

// VICTORY LOG - Button

// TASK MANAGER - Button

// STOPWATCH & TIMER - Button

// MARK: - FEATURE 1: TEAM HUB - TEAM MEMBER LIST
// -------------------------------------------------------------------------------------------------------------
// GOALS:
// -Add/Edit/Delete Member Details (Name, Contact, Photo, RoleID, AssignedTeamID)
// -Add/View Assigned Team
// -CRUD Member Details (Create, Read, Update, Delete)
// -Intergrate with SQlite to handle the data to work in the real world.


// Applying use of enum and case: Team Roles
// enum should be PascalCase and case should be camelCase. Use of CaseIterable protocol to get a list of all the cases in an enum.
enum TeamRole: String, CaseIterable {
    case pleaseSelect = "Please Select" // my thoughts are to use this as a dropdown picker without having to deal with an optional
    case manager = "Manager"
    case coach = "Coach"
    case headCoach = "Head Coach"
    case assistantCoach = "Assistant Coach"
    case captain = "Captain"
    case coCaptain = "Co-Captain"
    case player = "Player"
    case parent = "Parent"
    case volunteer = "Volunteer"
    case teamSupport = "Team Support"
}

// Applying use of struct: Team, TeamMember
// Applying use of Identifiable which is a Swift protocol that requires each instance of a type to have a unique id.
// Team Belongs to Users and contains Team Members
struct Team: Identifiable {
    var id: UUID {teamId} // Use of Identifiable
    var teamId: UUID // Unique ID
    var teamName: String // text
    var teamManager: String // TODO will need to adjust depending on how users and members are set up
}

// Team Members who belong to a Team or Multiple Teams
struct TeamMember: Identifiable {
    var id: UUID {memberId} // Use of Identifiable
    var memberId: UUID // to help create unique IDs you should use import Foundation
    var memberFirstName: String
    var memberLastName: String
    var memberPhoneNumber: String
    var memberEmail: String
    var memberImagePath: String // TODO will need to adjust depending on how you implement SQLite
    var memberRole: TeamRole // acts like a constraint and needs to be one of roles listed in TeamRole
    var assignedTeams: [UUID] // a member may be assigned to more than one team so using array to store multiple teams
    var memberDetails: String // a text box to add other details like jersey number or bio make changes in future as needed.
}

// Applying use of class and func: Team Manager
// Create Team Manager Class and add and apply knowledge of functions to addTeamMember and deleteTeamMember.
// Note to self make sure functions are nested correctly, may need closures, and be sure to call the functions.
class TeamManager {
    // Applying use of private(set) so only the TeamManager can add or remove their team. Changes to the team go through the TeamManager you don't want all team members to be able to make changes.
    private(set) var teamMembers: [TeamMember] = []
    // Create function to addTeamMember
    func addTeamMember(_ newTeamMember: TeamMember) {
        teamMembers.append(newTeamMember)
        print("New Team Member Added ✅ 🎉: \(newTeamMember.memberFirstName) \(newTeamMember.memberLastName)")
    }
    func listAllTeamMembers() {
        if teamMembers.isEmpty {
            print("⚠️ No Team Members Found⚠️")
            return
        }
        print("\nList All Team Members:")
        for member in teamMembers {
            print("""
              =========================================
                        Name: \(member.memberFirstName) \(member.memberLastName)
                       Phone: \(member.memberPhoneNumber)
                       Email: \(member.memberEmail)
                        Role: \(member.memberRole)
              Assigned Teams: \(member.assignedTeams.map { teams[$0] ?? "Unknown Team"}.joined(separator: ",\n                "))
                     Details: \(member.memberDetails)
                  Image Path: \(member.memberImagePath)
              ◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
              """)
        }
    }
            // Create function to deleteTeamMember
    func deleteTeamMember(memberId: UUID) {
        if let index = teamMembers.firstIndex(where: { $0.memberId == memberId }) {
            let removedMember = teamMembers.remove(at: index)
            print("Team Member Deleted ✅ 🎉: \(removedMember.memberFirstName) \(removedMember.memberLastName)")
        } else {
            print("⚠️Team Member Not Found ⚠️ with ID: \(memberId)")
        }
    }

// Apply use of Loops to Display Each Member using print()
// Note if member is assigned multiple teams as [UUID] is set up as an array. The .map function loops over each UUID in the array. The $0 means each UUID. The .uuidString as like the name suggests converts UUID into a string. The .joined(separator: ", ") joins the UUIDs together with the comma and space.
// Note to clarify (teams[teamId] ?? "Unknown Team")

    // List all members of a specific team
    func listMember(byTeam teamId: UUID) {
        let membersInTeam = teamMembers.filter { $0.assignedTeams.contains(teamId) }
        if membersInTeam.isEmpty {
            print("⚠️No Team Members Found for this Team⚠️: \(teamId)")
        } else {
            print("\nMembers of: \(teams[teamId] ?? "Unknown Team")")
            for member in membersInTeam {
                print("""
                - \(member.memberFirstName) \(member.memberLastName) (\(member.memberRole.rawValue))
                """)
                
            }
        }
    }
}
// Create TeamManager and Add Test Members
// Define Constant for teamManager
let teamManager = TeamManager()

// Define Constants for Testing Multiple Team scenarios.
let swiftProgrammingTeamId = UUID()
let teacherTeamId = UUID()
let studentTeamId = UUID()
let tutorTeamId = UUID()

// Applying use of Dictionary to define multiple Teams for Testing
let teams: [UUID: String] = [
    swiftProgrammingTeamId: "Swift Programing Team",
    teacherTeamId: "MCC Teacher Team",
    studentTeamId: "MCC Student Team",
    tutorTeamId: "MCC Tutor Team"
]

// Create some Test Subjects and Add Team Members... :)
// Add Team Members
teamManager.addTeamMember(TeamMember(
    memberId: UUID(),
    memberFirstName: "Shawnna",
    memberLastName: "Hann",
    memberPhoneNumber: "734-604-4636",
    memberEmail: "shann+test@students.mchenry.edu",
    memberImagePath: "shawnna.jpg",
    memberRole: .manager,
    assignedTeams: [swiftProgrammingTeamId, studentTeamId],
    memberDetails: "MCC iOS Student"
))

teamManager.addTeamMember(TeamMember(
    memberId: UUID(),
    memberFirstName: "Bill",
    memberLastName: "Skrzypczak",
    memberPhoneNumber: "815-479-7539",
    memberEmail: "bskrzypczak+test@mchenry.edu",
    memberImagePath: "bill.jpg",
    memberRole: .headCoach,
    assignedTeams: [swiftProgrammingTeamId, teacherTeamId],
    memberDetails: "MCC Programming Instructor"
))

teamManager.addTeamMember(TeamMember(
    memberId: UUID(),
    memberFirstName: "Tony",
    memberLastName: "Janus",
    memberPhoneNumber: "123-456-7890",
    memberEmail: "tjanus+test@students.mchenry.edu",
    memberImagePath: "tony.jpg",
    memberRole: .assistantCoach,
    assignedTeams: [studentTeamId, tutorTeamId],
    memberDetails: "MCC Tutor and Student"
))

teamManager.addTeamMember(TeamMember(
    memberId: UUID(),
    memberFirstName: "Jake",
    memberLastName: "Matsumoto",
    memberPhoneNumber: "123-456-7890",
    memberEmail: "jmatsumoto+test@students.mchenry.edu",
    memberImagePath: "jake.jpg",
    memberRole: .player,
    assignedTeams: [swiftProgrammingTeamId, studentTeamId],
    memberDetails: "MCC iOS Student"
))

teamManager.addTeamMember(TeamMember(
    memberId: UUID(),
    memberFirstName: "Captain",
    memberLastName: "Swift",
    memberPhoneNumber: "123-867-5309",
    memberEmail: "shann+test2@students.mchenry.edu",
    memberImagePath: "captain.jpg",
    memberRole: .captain,
    assignedTeams: [swiftProgrammingTeamId, studentTeamId],
    memberDetails: "Ph.D in AI Testing. Favorite programming language: Swift"
))

teamManager.addTeamMember(TeamMember(
    memberId: UUID(),
    memberFirstName: "Tony",
    memberLastName: "Stark",
    memberPhoneNumber: "212-IRON-MAN",
    memberEmail: "tstark+ai@students.mchenry.edu",
    memberImagePath: "ironman.jpg",
    memberRole: .parent,
    assignedTeams: [tutorTeamId],
    memberDetails: "Billionaire. Genius. Built a full-stack app in a cave."
))

// List All Members Testing
teamManager.listAllTeamMembers()

// Delete Unknown Member Testing - Will Trigger "⚠️Team Member Not Found ⚠️ with ID:"
print("\nTrigger Else Statement (deleteTeamMember):")
print("=========================================")
if let unKnownTestMemberId = UUID(uuidString: "00000000-0000-0000-0000-000000012345") {
    teamManager.deleteTeamMember(memberId: unKnownTestMemberId)
}
print("◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆")

// Delete Tony Stark (and make sure it isn't Tony Janus)
print("\nDelete Tony Stark:")
print("=========================================")
    if let tonyStark = teamManager.teamMembers.first(where: {
        $0.memberFirstName == "Tony" && $0.memberLastName == "Stark"
    }) {
        teamManager.deleteTeamMember(memberId: tonyStark.memberId)
    }
print("◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆")
// List Members of the Teacher Team
teamManager.listMember(byTeam: teacherTeamId)
// List Members of the MCC Student Team
teamManager.listMember(byTeam: studentTeamId)
// List Members of the Tutor Team
teamManager.listMember(byTeam: tutorTeamId)
print("◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆")

// MARK: - FEATURE 2: GAME DAY QUOTES
// -------------------------------------------------------------------------------------------------------------
//Daily motivational messages for inspiration
//TODO: Figure out real world implementation probably uses SQLite? or learn how to generate with AI

// MARK: ORIGINAL IDEA
// Using a simple Array but not practical in real world apps.
print("\n🔥ORIGINAL IDEA FOR GAME DAY QUOTES GENERATOR (.randomElement())🔥")
let gameDayQuotes = [
    "\"The only way to do great work is to love what you do.\" - Steve Jobs",
    "\"Nothing is impossible. The word itself says 'I'm possible!'\" - Audrey Hepburn",
    "\"Believe you can and you're halfway there.\" - Theodore Roosevelt",
    "\"Winners never quit and quitters never win.\" - Vince Lombardi",
    "\"It's not the size of the dog in the fight, but the size in the fight of the dog.\" - Archie Griffin",
    "\"The only thing we have to fear is fear itself.\" - Franklin D. Roosevelt",
    "\"A champion is simply someone who did not give up when they wanted to.\" - Tom Landry",
    "\"When you don’t give up, you cannot fail.\" - Adrian Peterson",
    "\"The way a team plays as a whole determines its success.\" - Babe Ruth",
    "\"Talent wins games, but teamwork and intelligence win championships.\" - Michael Jordan",
    "\"In the end, it’s the effort that matters. The rest is beyond your control.\" - Maria Sharapova",
    "\"No one ever drowned in sweat.\" - Lou Holtz",
    "\"Coming together is a beginning. Keeping together is progress. Working together is success.\" - Henry Ford"
    ]
// Generate Random Quote from the Array using .randomElement()
print(gameDayQuotes.randomElement() ?? "No quotes found")


// MARK: NEXT IDEA
// Define Quote Categories with Enumerations and Case
// TODO: May need to adjust categories as the app progresses.
print("\n🔥NEXT IDEA FOR GAME DAY QUOTES GENERATOR🔥")
// Create enum for QuoteCategories
enum QuoteCategory: String, CaseIterable {
    case inspirational = "Inspirational"
    case motivational = "Motivational"
    case funny = "Funny"
    case wisdom = "Wisdom"
    case teamwork = "Teamwork"
    case leadership = "Leadership"
    case success = "Success"
    case comeback = "Comeback"
}

// Create a Quote Struct with UUID for SQLite mindset
struct Quote: Identifiable {
    let id = UUID() // will need a unique id if you use SQL or something similar
    let quoteCategory: QuoteCategory
    let quoteText: String
    let quoteAuthor: String
}

// Define a Class to manage the quotes array
class GameDayQuotes {
    // Define some useful variables
    var quotesByCategory: [Quote] = [] // Use Quote struct = Empty Array []
    var memberFavoriteQuote: [Quote] = []
    var lastDisplayedQuote: Quote? // Track last quote
    
    // Initializer to add quotes for Testing
    init() {
        quotesByCategory = [
            Quote(quoteCategory: .success, quoteText: "\"The only way to do great work is to love what you do.\"", quoteAuthor: "Steve Jobs"),
            Quote(quoteCategory: .motivational, quoteText: "\"Winners never quit and quitters never win.\"", quoteAuthor: "Vince Lombardi"),
            Quote(quoteCategory: .funny, quoteText: "\"I’ve missed more than 9,000 shots in my career. And that was just in practice.\"", quoteAuthor: "Inspired by MJ's quote"),
            Quote(quoteCategory: .comeback, quoteText: "\"A champion is simply someone who did not give up when they wanted to.\"", quoteAuthor: "Tom Landry"),
            // add more if needed
            // added more funny quotes to test
            Quote(quoteCategory: .funny, quoteText: "\"Baseball is ninety percent mental and the other half is physical.\"", quoteAuthor: "Yogi Berra"),
            Quote(quoteCategory: .funny, quoteText: "\"I’m not a role model... Just because I dunk a basketball doesn’t mean I should raise your kids.\"", quoteAuthor: "Charles Barkley"),
            Quote(quoteCategory: .funny, quoteText: "\"Me shooting 40% at the foul line is just God’s way to say nobody’s perfect.\"", quoteAuthor: "Shaquille O’Neal")
            
        ]
    }
    // Create Function to Display Random Quote from a Category
    func displayRandomQuote(for category: QuoteCategory) {
        // Filter quotes by the category
        let filteredQuotes = quotesByCategory.filter { $0.quoteCategory == category }
        // Use of a quard stament for quick exit
        // Use of .rawValue to show text of the case
        // Use of return to pass through if quote is found
        guard !filteredQuotes.isEmpty else {
            print("⚠️No Quotes Found in: \(category.rawValue) Category")
            return
        }
        //
        if let randomQuote = filteredQuotes.randomElement() {
            print("\(category.rawValue) Category: \(randomQuote.quoteText)~ \(randomQuote.quoteAuthor)")
        }
    }
    // Create Function for Favorites
    func saveQuoteAsFavorite(_ quote: Quote) {
        if memberFavoriteQuote.contains(where: { $0.quoteText == quote.quoteText }) {
            print("This quote is already in your favorites.")
        } else {
            memberFavoriteQuote.append(quote)
            print ("Quote Added to Favorites✅ 🎉: \(quote.quoteText) ~ \(quote.quoteAuthor)")
        }
    }
    func memberFavoritesList() {
        if memberFavoriteQuote.isEmpty {
            print("No favorite quotes saved yet.")
        } else {
            print("My Favorites List:")
            for (index, quote) in memberFavoriteQuote.enumerated() {
                print("\(index + 1)) \(quote.quoteText) ~ \(quote.quoteAuthor)")
            }
        }
    }
}

// Define a constant after class
let quoteSelector = GameDayQuotes()

// use quoteSelector to pick a random funny quote
print("🤪 Generate Random Quote from Funny:")
quoteSelector.displayRandomQuote(for: .funny) // will show the same quote if you don't have multiple quotes in funny category

// Save a Quote to Favorites Testing
print("\n💖 ADD TO FAVORITES 💖")
if let lastDisplayed = quoteSelector.quotesByCategory.last {
    quoteSelector.saveQuoteAsFavorite(lastDisplayed)
//    quoteSelector.saveQuoteAsFavorite(lastDisplayed) // uncomment to see else statment in action
}
// List all favorites
// FIXME: Fix bug to add multiple favorites.
quoteSelector.memberFavoritesList ()

// Loops through all Enum cases even if no quotes
// Uses else statment if no quotes found in category
print("\n💪 Generate Random Quote for Each Category (or else statment):")
for (index, category) in QuoteCategory.allCases.enumerated() {
    print("\(index + 1)) ", terminator: "") // adds number before quote and uses terminator to keep on same line
    quoteSelector.displayRandomQuote(for: category)
}
// MARK: FEATURE 3: STOPWATCH & TIMER (&COUNTER TOOL)
// -------------------------------------------------------------------------------------------------------------
// MARK: FEATURE 3A: STOPWATCH
// A simple command-line stopwatch
print("\n FEATURE 3A: STOPWATCH")
// Create a class to hold all the stopwatch logic
class PrecisionStopwatch {
    // Add properties
    private var startTime: Date?
    private var elapsedTime: TimeInterval = 0
    private var timer: Timer?
    private(set) var isRunning = false
//TODO: Create Functions for Start, Stop, and Reset
// Create Functions for start, stop, and reset
//    func start()
//    
//    func stop()
//    
//    func reset()
// Create an instance of the Stopwatch

// Call the functions to use the Stopwatch




// MARK: FEATURE 3B: COUNTDOWN TIMER
// A simple timer tool to set, start countdown, get notified when it reaches zero, and reset.

// MARK: FEATURE 3C: COUNTER TOOL
// A simple counter tool used to count numbers with a click of a button and option to reset.


// MARK: FEATURE 4: VICTORY LOG
// -------------------------------------------------------------------------------------------------------------
// A simple journal with the ability to add, update, and delete.
// Quick game day notes

//class NotesManager {
//    let notesID = UUID()
//    var notes: [String] = []
//}
//
//func addNote
//
//func updateNote
//
//func hideNote
//
//func deleteNote


// MARK: FEATURE 5: TASK MANAGER
// -------------------------------------------------------------------------------------------------------------
// Assign tasks to member with a completion tracker

