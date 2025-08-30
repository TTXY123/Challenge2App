import SwiftUI

struct Alert3View: View {
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
                Button("Close") {
                    shown.toggle()
                }
                .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 40)
                .foregroundColor(.white)
                
                NavigationLink("Ok") {
                    Question4View()
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

struct Alert3View_Previews: PreviewProvider {
    static var previews: some View {
        Alert3View(shown: .constant(true), btnClicked: .constant(false), isSuccess: true, message: "You're right! You're right! You're right! You're right! You're right!")
            .previewLayout(.sizeThatFits)
    }
}
