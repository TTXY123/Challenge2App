import SwiftUI

struct Question3View: View {
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
                Text("Question 3: Which material is an electrical conductor?")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.horizontal, 20)
                Spacer()
                Spacer()

                
                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Plastic is an electrical insulator!"
                    shown.toggle()
                }) {
                    Text("plastic")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Rubber is an electrical insulator!"
                    shown.toggle()
                }) {
                    Text("rubber")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                Button(action: {
                    isSuccess = true
                    alertMessage = "Correct! Metal is an electrical conductor!"
                    shown.toggle()
                }) {
                    Text("metal")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }


                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Paper is an electrical insulator!"
                    shown.toggle()
                }) {
                    Text("paper")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                
                Spacer()
            }

            if shown {
                Alert3View(shown: $shown, btnClicked: $btnClicked, isSuccess: isSuccess, message: alertMessage)
            }
        }
    }
}

struct Question3View_Previews: PreviewProvider {
    static var previews: some View {
        Question3View()
            .previewLayout(.sizeThatFits)
    }
}
