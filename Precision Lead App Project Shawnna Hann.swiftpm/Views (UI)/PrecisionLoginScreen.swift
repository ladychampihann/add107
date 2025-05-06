import SwiftUI

// MARK: - LOGIN VIEW
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

