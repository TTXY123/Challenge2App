import SwiftUI

struct Question5View: View {
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
                Text("Question 5: Which two systems work together to enable movement?")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.horizontal, 20)
                Spacer()

                
                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Circulatory system is used only for transporation!"
                    shown.toggle()
                }) {
                    Text("circulatory system and skeletal system")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                Button(action: {
                    isSuccess = true
                    alertMessage = "Correct! Muscles in the muscular system expands and contracts to allow for parts of the body to move. The skeletal system are the support for the parts of the body to move."
                    shown.toggle()
                }) {
                    Text("skeletal system and muscular system")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Digestive system is used for digesting food?? Why would you choose this..."
                    shown.toggle()
                }) {
                    Text("muscular system and digestive system")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                

                Button(action: {
                    isSuccess = false
                    alertMessage = "Try again! Respiratory system is used for gasesous exchange. How is gaseous exchange related to movement?"
                    shown.toggle()
                }) {
                    Text("circulatory system and respiratory system")
                        .foregroundColor(.black)
                        .frame(width: 360, height: 60)
                        .background(Color(red: 255/255, green: 230/255, blue: 150/255))
                        .cornerRadius(20)
                }
                

                
                Spacer()
            }

            if shown {
                Alert5View(shown: $shown, btnClicked: $btnClicked, isSuccess: isSuccess, message: alertMessage)
            }
        }
    }
}

struct Question5View_Previews: PreviewProvider {
    static var previews: some View {
        Question5View()
            .previewLayout(.sizeThatFits)
    }
}
