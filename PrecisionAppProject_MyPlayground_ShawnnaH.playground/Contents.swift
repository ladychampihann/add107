
import SwiftUI
import Foundation
import SQLite3


// FINAL PROJECT - WELCOME TO PRECISION LEAD
// BRIEF SUMMARY:

// LOGIN SCREEN - WELCOME TO PRECISION LEAD-------------------------------------------------------------------------------------------
// GOAL: Design functional pass through buttons as I currently don't have knowledge how to set up users.

// Standard Welcome Greeting
//let welcomeGreeting = "Welcome to the Precision Lead App!"
//print(welcomeGreeting)

// Fun Welocme Greeting
let welcomeGreeting = "Welcome to the Precision Lead App!"
let border = String(repeating: "*", count: welcomeGreeting.count + 6)

print(border)
print("*  \(welcomeGreeting)  *")
print(border)

// Precision Lead Logo

// Login Button

// Learn More Button

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

// HOME SCREEN DASHBOARD - PRECISION LEAD----------------------------------------------------------------------------------------------------
// GOALS: Design functional buttons for the core features

// My Team - Button

// Motivation - Button

// Victory Log - Button

// Task Tracker - Button

// Time Tools - Button (Stopwatch or Timer)


// FEATURE 1: TEAM MEMBER LIST --------------------------------------------------------------------------------------------------------
// KEY GOALS:
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
            print("\nMembers of Team: \(teams[teamId] ?? "Unknown Team")")
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

// Appling use of Dictionary to define multiple Teams for Testing
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



//FEATURE 2: Game Day Quotes – Daily motivational messages for inspiration.

// Quotes Array
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

// Display Random Quote from the Array
print(gameDayQuotes.randomElement() ?? "No quotes found")

//FEATURE 3: Victory Log/Notebook – A simple journal with the ability to add, update, and delete

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



//FEATURE 4: Task/To-Do List – Assign tasks to member with a completion tracker

//enum TeamPlayerRoles
//{
//    case
//}


// Warm-Up Timer



// Quick Game Day Notes
