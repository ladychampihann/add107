import SwiftUI
// MARK: FEATURE 3A: STOPWATCH

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
