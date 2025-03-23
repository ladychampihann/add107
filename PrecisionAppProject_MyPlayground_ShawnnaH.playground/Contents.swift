
import SwiftUI

// Sprint 1 - Precision Lead App - Final Project
struct ContentView: View {
    @State private var selectedQuote: String = "Tap below for motivation!"
    
    let gameDayQuotes = [
        "The only way to do great work is to love what you do. - Steve Jobs",
        "Nothing is impossible. The word itself says 'I'm possible!' - Audrey Hepburn",
        "Believe you can and you're halfway there. - Theodore Roosevelt",
        "Winners never quit and quitters never win. - Vince Lombardi",
        "It's not the size of the dog in the fight, but the size in the fight of the dog. - Archie Griffin",
        "The only thing we have to fear is fear itself. - Franklin D. Roosevelt",
        "A champion is simply someone who did not give up when they wanted to. - Tom Landry",
        "When you don’t give up, you cannot fail. - Adrian Peterson",
        "The way a team plays as a whole determines its success. - Babe Ruth",
        "Talent wins games, but teamwork and intelligence win championships. - Michael Jordan",
        "In the end, it’s the effort that matters. The rest is beyond your control. - Maria Sharapova",
        "No one ever drowned in sweat. - Lou Holtz",
        "Coming together is a beginning. Keeping together is progress. Working together is success. - Henry Ford"
    ]
    
    var body: some View {
        VStack {
            Text("Precision Lead - Game Day Quotes")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                
            Text(selectedQuote)
                .font(.body)
                .italic()
                .multilineTextAlignment(.center)
                .padding()
                .animation(.easeInOut, value: selectedQuote)
            
            Button(action: {
                selectedQuote = gameDayQuotes.randomElement() ?? "Stay motivated!"
            }) {
                Text("Get a Quote")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

@main
struct PrecisionLeadApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


// Warm-Up Timer



// Quick Game Day Notes
