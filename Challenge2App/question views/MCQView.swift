import SwiftUI

struct MCQView: View {
    @StateObject var streakManager = StreakManager()
    @Binding var money: Int
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()

                    NavigationLink(destination: Question1View()) {
                        Text("Start Quiz (5 questions)")
                            .foregroundColor(.black)
                            .padding(50)
                            .background(Color.white)
                            .cornerRadius(30)
                            .shadow(radius: 5)
                    }

                    VStack(spacing: 20) {
                        Text("🔥 Streak: \(streakManager.streakCount) days")
                            .font(.title)

                        Button("Collect your rewards!") {
                            streakManager.updateStreakIfNeeded()
                            money += 5
                        }
                        .disabled(streakManager.todayStreakUpdated)
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 5)
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    MCQView(money: .constant(0))
}
