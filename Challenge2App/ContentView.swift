import SwiftUI

struct ContentView: View {
    @State private var Money = 0

    var body: some View {
        ZStack {
            TabView {
                MyHotelView()
                    .tabItem {
                        Label("My Hotel", systemImage: "building")
                    }

                MCQView(money: $Money)
                    .tabItem {
                        Label("MCQ", systemImage: "checklist.checked.rtl")
                    }

                LearnView()
                    .tabItem {
                        Label("Learn", systemImage: "questionmark")
                    }
            }

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Money: \(Money)")
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .padding(.trailing)
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}
