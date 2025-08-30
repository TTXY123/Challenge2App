import SwiftUI

struct Question2View: View {
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
                Text("Question 2: As the height of an object from the ground increases, the gravitational force increases.")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.horizontal, 20)
                Spacer()
                

                

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Gravitational force is not the same as gravitational potential energy."
                    shown.toggle()
                }) {
                    Text("true")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 120)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                Button(action: {
                    isSuccess = true
                    alertMessage = "Correct! The gravitational force decreases as it gets further away from Earth."
                    shown.toggle()
                }) {
                    Text("false")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 120)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                
                
                Spacer()
            }

            if shown {
                Alert2View(shown: $shown, btnClicked: $btnClicked, isSuccess: isSuccess, message: alertMessage)
            }
        }
    }
}

struct Question2View_Previews: PreviewProvider {
    static var previews: some View {
        Question2View()
            .previewLayout(.sizeThatFits)
    }
}
