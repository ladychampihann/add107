import SwiftUI
// MARK: - FEATURE 2: GAME DAY QUOTES


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
