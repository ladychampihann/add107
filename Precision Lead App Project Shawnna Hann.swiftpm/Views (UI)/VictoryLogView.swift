import SwiftUI
// MARK: FEATURE 4: VICTORY LOG
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
