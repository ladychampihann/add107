import SwiftUI

// MARK: - HOME DASHBOARD

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
