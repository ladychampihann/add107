import SwiftUI

// MARK: - FEATURE: Testing Preview in Swift


struct PrecisionLoginScreen: View {
    var body: some View {
        NavigationView { // Wrap the entire screen in a NavigationView
            ZStack {
                Image("BackgroundImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(edges: .top)
                    .ignoresSafeArea(edges: .bottom)
                    .opacity(0.2)
                
                VStack {
                    // "Welcome to Precision Lead" text with shadow
                    Text("Welcome to Precision Lead")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .edgesIgnoringSafeArea(.horizontal)
                        .padding(.bottom, 40.0)
                        .shadow(color: Color.black.opacity(0.6), radius: 10, x: 5, y: 5) // Added shadow
                    
                    // AppIcon Image I created in Canva
                    Image("MainImage")
                        .resizable()
                        .frame(width: 200.00, height: 200.0)
                        .shadow(radius: 15.0) // Stronger shadow for the image
                        .cornerRadius(40.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 8)
                        )
                        .padding(.bottom, 60.0)
                        .shadow(color: Color.black.opacity(0.5), radius: 15, x: 5, y: 5) // Shadow around the image
                    
                    // "Let's Get Started" button to go to Home Screen
                    NavigationLink(destination: HomeScreen()) { // Ensure this is wrapped in NavigationLink
                        Text("Let's Get Started")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10.0)
                            .frame(width: 260.00, height: 60.0)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5) // Shadow for button
                            .background(Color.red)
                            .cornerRadius(40.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 8)
                            )
                            .padding(.bottom, 20.0)
                    }
                    
                    // "Learn More" button to learn more about the App
                    NavigationLink(destination: LearnMoreScreen()) { // Ensure this is wrapped in NavigationLink
                        Text("Learn More")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .padding(.vertical, 10.0)
                            .frame(width: 260.00, height: 60.0)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5) // Shadow for button
                            .background(Color.white)
                            .cornerRadius(40.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 8)
                            )
                            .padding(.bottom, 10.0)
                    }
                }
            }
            .navigationBarHidden(true) // Hide the navigation bar for this screen (optional)
        }
    }
}
//-------------------------------------------------------------
struct LearnMoreScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.opacity(0.15)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("MainImage")
                        .resizable()
                        .frame(width: 200.00, height: 200.0)
                        .shadow(radius: 15.0) // Stronger shadow for the image
                        .cornerRadius(40.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 8)
                        )
                        .shadow(color: Color.black.opacity(0.5), radius: 15, x: 5, y: 5) // Shadow around the image
                    Text("""
                Precision Lead is an App tailored for student-athletes, captains, and coaches to elevate their game day experience. It is a leadership tool that fosters a growth mindset by enabling captains and coaches to stay organized, communicate effectively, and inspire their teams.
                
                Core Features to be included:
                1) Team Member List Manager
                2) Game Day Quotes Generator
                3) Timer
                3) Game Day Notes/Journal
                4) Task/To-Do List
                
                Future Features:  
                5) Team Communication
                6) Team Calendar 
                7) AI-Generated Game Day Quotes 
                """)
                    .font(.headline)
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding()
                    
                    // Add more content for the Learn More screen here.
                }
                .navigationBarTitle("Learn More", displayMode: .inline) // Optional: Custom title for the navigation bar
                .navigationBarHidden(false) // Ensures navigation bar shows (and back button is available)

            }
        }
    }
}
//-------------------------------------------------------------
struct HomeScreen: View {
    var body: some View {
        NavigationView { // Wrap the entire screen in a NavigationView
            ZStack {
                Image("BackgroundImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(edges: .top)
                    .ignoresSafeArea(edges: .bottom)
                    .opacity(0.2)
                VStack {
                    NavigationLink(destination: GameDayQuotesFeature()) {
                        Text("Game Day Quotes")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10.0)
                            .frame(width: 260.00, height: 60.0)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5) // Shadow for button
                            .background(Color.red)
                            .cornerRadius(40.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 8)
                            )
                            .padding(.bottom, 20.0)
                    }
                    
                    NavigationLink(destination: TimerFeature()) {
                        Text("Timer")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10.0)
                            .frame(width: 260.00, height: 60.0)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5) // Shadow for button
                            .background(Color.red)
                            .cornerRadius(40.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 8)
                            )
                            .padding(.bottom, 20.0)
                    }
                    
                    NavigationLink(destination: GameDayNotesFeature()) {
                        Text("Game Day Notes")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10.0)
                            .frame(width: 260.00, height: 60.0)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5) // Shadow for button
                            .background(Color.red)
                            .cornerRadius(40.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 8)
                            )
                            .padding(.bottom, 20.0)
                    }
                    
                    // You can add more content for the Home screen here.
                }
                .navigationBarTitle("Home Screen", displayMode: .inline)
                .navigationBarHidden(false) // Ensures navigation bar shows (and back button is available)

            }
        }
    }
}
    //-------------------------------------------------------------
    
    struct GameDayQuotesFeature: View {
        let gameDayQuotes = [
            "\"The only way to do great work is to love what you do.\" \n\n~ Steve Jobs",
            "\"Nothing is impossible. The word itself says 'I'm possible!'\" \n\n~ Audrey Hepburn",
            "\"Believe you can and you're halfway there.\" \n\n~ Theodore Roosevelt",
            "\"Winners never quit and quitters never win.\" \n\n~ Vince Lombardi",
            "\"It's not the size of the dog in the fight, but the size in the fight of the dog.\" \n\n~ Archie Griffin",
            "\"The only thing we have to fear is fear itself.\" \n\n~ Franklin D. Roosevelt",
            "\"A champion is simply someone who did not give up when they wanted to.\" \n\n~ Tom Landry",
            "\"When you don’t give up, you cannot fail.\" \n\n~ Adrian Peterson",
            "\"The way a team plays as a whole determines its success.\" \n\n~ Babe Ruth",
            "\"Talent wins games, but teamwork and intelligence win championships.\" \n\n~ Michael Jordan",
            "\"In the end, it’s the effort that matters. The rest is beyond your control.\" \n\n~ Maria Sharapova",
            "\"No one ever drowned in sweat.\" \n\n~ Lou Holtz",
            "\"Coming together is a beginning. Keeping together is progress. Working together is success.\" \n\n~ Henry Ford"
        ]
        
        @State private var randomQuote = "Game Day Quotes!"  // Declare this only once
        
        // State Variables for Animations
        @State private var textOpacity = 0.0
        @State private var textScale: CGFloat = 0.8
        @State private var buttonScale: CGFloat = 1.0
        
        var body: some View {
                ZStack {
                    // Background Image
                    Image("RedMosiac")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea(edges: .top)
                        .ignoresSafeArea(edges: .bottom)
                        .opacity(0.8)
                    
                    VStack {
                        // Animated Text for Random Quote
                        Text(randomQuote)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .italic(true)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                            .padding([.top, .leading, .trailing], 10.0)
                            .frame(width: 350.0, height: 450.0)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(40.0)
                            .opacity(textOpacity) // Animation effect on opacity
                            .scaleEffect(textScale) // Scale effect
                            .animation(.easeIn(duration: 0.5), value: randomQuote) // Smooth transition when quote changes
                        
                        Spacer()
                        
                        // Animated Button with Hover Effect
                        Button(action: {
                            randomQuote = gameDayQuotes.randomElement() ?? "Stay motivated!"
                            textOpacity = 0.0
                            textScale = 0.8
                            withAnimation {
                                textOpacity = 1.0
                                textScale = 1.0
                            }
                        }) {
                            Text("Get Your Quote")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.vertical, 10.0)
                                .frame(width: 260.0, height: 60.0)
                                .background(Color.red)
                                .cornerRadius(40.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.black, lineWidth: 8)
                                )
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
                                .scaleEffect(buttonScale) // Button scaling animation
                                .animation(.easeInOut(duration: 0.3), value: buttonScale) // Button hover animation
                        }
                        .padding(.bottom, 80) // Button padding from bottom
                    }
                    .padding()
                    .onAppear {
                        // Initial Fade-in Animation
                        withAnimation {
                            textOpacity = 1.0
                            textScale = 1.0
                        }
                    }
                }
                .navigationBarTitle("Game Day Quotes", displayMode: .inline)
                .navigationBarBackButtonHidden(true)

            }
        }
    //-------------------------------------------------------------
struct TimerFeature: View {
    @State private var timeElapsed = 0
    @State private var isRunning = false
    @State private var timer: Timer? = nil
    
    var body: some View {
        ZStack {
            // Background Image
            Image("BackgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(edges: .top)
                .ignoresSafeArea(edges: .bottom)
                .opacity(0.2)
            VStack {
                Text("Timer")
                    .font(.largeTitle)
                    .padding()
                
                Text("\(timeElapsed) seconds")
                    .font(.title)
                    .padding()
                
                HStack {
                    Button(action: startStopTimer) {
                        Text(isRunning ? "Stop" : "Start")
                            .font(.title)
                            .padding()
                            .background(isRunning ? Color.red : Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: resetTimer) {
                        Text("Reset")
                            .font(.title)
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Timer", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }
    }
        func startStopTimer() {
            if isRunning {
                timer?.invalidate()
            } else {
                timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                    DispatchQueue.main.async {
                        timeElapsed += 1
                    }
                }
            }
            isRunning.toggle()
        }
        
        func resetTimer() {
            timer?.invalidate()
            timeElapsed = 0
            isRunning = false
        }
    }
    
    struct TimerFeature_Previews: PreviewProvider {
        static var previews: some View {
            TimerFeature()
        }
    }

    //-------------------------------------------------------------
//    struct GameDayNotesFeature: View {
//        var body: some View {
//            Text("Welcome to the Game Day Notes Screen!")
//                .font(.largeTitle)
//                .navigationBarTitle("Game Day Notes", displayMode: .inline)
//        }
//    }

// Data Model
struct GameDayNote: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var gameDate: Date
}

// ViewModel for managing Game Day Notes
class GameDayNotesViewModel: ObservableObject {
    @Published var notes: [GameDayNote] = []
    
    func addGameDayNote(title: String, content: String, gameDate: Date) {
        let newNote = GameDayNote(title: title, content: content, gameDate: gameDate)
        notes.append(newNote)
    }
}

// Extension for formatting date
extension DateFormatter {
    static var shortDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}

// Main Feature View to display and add notes
struct GameDayNotesFeature: View {
    @StateObject var viewModel = GameDayNotesViewModel()  // ViewModel for managing notes
    
    var body: some View {
            VStack {
                // List to show Game Day Notes
                List(viewModel.notes) { note in
                    VStack(alignment: .leading) {
                        Text(note.title)
                            .font(.headline)
                        Text(note.content)
                            .font(.subheadline)
                            .lineLimit(2)
                        Text("\(note.gameDate, formatter: DateFormatter.shortDate)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .navigationBarTitle("Game Day Notes", displayMode: .inline)
                .navigationBarItems(trailing: NavigationLink(destination: AddGameDayNoteView(viewModel: viewModel)) {
                    Text("Add Note")
                .navigationBarBackButtonHidden(true)
                })
            }
        }
    }

// View to Add a New Game Day Note
struct AddGameDayNoteView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: GameDayNotesViewModel
    @State private var title: String = ""
    @State private var content: String = ""
    @State private var gameDate: Date = Date()  // Default to current date
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextEditor(text: $content)
                .padding()
                .frame(height: 200)
                .border(Color.gray, width: 1)
            
            DatePicker("Game Date", selection: $gameDate, displayedComponents: .date)
                .padding()
            
            Button("Save Game Day Note") {
                viewModel.addGameDayNote(title: title, content: content, gameDate: gameDate)
                dismiss() // Go back after saving the note
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .navigationBarTitle("Add Game Day Note", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
    }
}
