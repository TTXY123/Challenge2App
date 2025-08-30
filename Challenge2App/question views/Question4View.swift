import SwiftUI

struct Question4View: View {
    @State private var shown = false
    @State private var btnClicked = false
    @State private var isSuccess = false
    @State private var alertMessage = "Please select an answer"

    var body: some View {
        ZStack {
            Color(red: 255/255, green: 248/255, blue: 232/255)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Question 4: Which material is a conductor of heat?")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.horizontal, 20)
                Spacer()
                Spacer()

                
                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Cement is a heat insulator!"
                    shown.toggle()
                }) {
                    Text("cement")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Wood is a heat insulator!"
                    shown.toggle()
                }) {
                    Text("wood")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Paper is a heat insulator!"
                    shown.toggle()
                }) {
                    Text("paper")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                Button(action: {
                    isSuccess = true
                    alertMessage = "Correct! Metal is a conductor of heat!"
                    shown.toggle()
                }) {
                    Text("metal")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }

                
                Spacer()
            }

            if shown {
                Alert4View(shown: $shown, btnClicked: $btnClicked, isSuccess: isSuccess, message: alertMessage)
            }
        }
    }
}

struct Question4View_Previews: PreviewProvider {
    static var previews: some View {
        Question4View()
            .previewLayout(.sizeThatFits)
    }
}
