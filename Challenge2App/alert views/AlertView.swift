import SwiftUI

struct AlertView: View {
    @Binding var shown: Bool
    @Binding var btnClicked: Bool
    var isSuccess: Bool
    var message: String

    var body: some View {
        VStack {
            
            Spacer()
            Text(message)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            Spacer()
            Divider()
            HStack {
                Button("Try again") {
                    shown.toggle()
                }
                .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 40)
                .foregroundColor(.white)
                
                NavigationLink("Next Q=question") {
                    Question2View()
                }
                .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 40)
                .foregroundColor(.white)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 50, height: 200)
        .background(Color.black.opacity(0.5))
        .cornerRadius(12)
        .clipped()
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView(shown: .constant(true), btnClicked: .constant(false), isSuccess: true, message: "You're right! You're right! You're right! You're right! You're right!")
            .previewLayout(.sizeThatFits)
    }
}
