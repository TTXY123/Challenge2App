import SwiftUI

struct Question1View: View {
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
                Text("Question 1: What forces are acting on a ball rolling down the hill?")
                    .multilineTextAlignment(.center)
                    .font(.title)
                Spacer()
                Spacer()

                Button(action: {
                    isSuccess = true
                    alertMessage = "Correct! There is friction between the ground and the ball while it is rolling down, and gravitational force is acting on the objects at all times."
                    shown.toggle()
                }) {
                    Text("friction and gravitional force")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! There are no magnets here, so there will be no magnetic force acting on the ball."
                    shown.toggle()
                }) {
                    Text("magnetic force and gravitational force")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! There are no springs here, so there will be no elastic spring force acting on the ball."
                    shown.toggle()
                }) {
                    Text("elastic spring force and friction")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! there are no springs or magnets here, so there will be no elastic spring force or magnetic force acting on the ball."
                    shown.toggle()
                }) {
                    Text("elastic spring force and magnetic force")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                
                Spacer()
            }

            if shown {
                AlertView(shown: $shown, btnClicked: $btnClicked, isSuccess: isSuccess, message: alertMessage)
            }
        }
    }
}

struct Question1View_Previews: PreviewProvider {
    static var previews: some View {
        Question1View()
            .previewLayout(.sizeThatFits)
    }
}
