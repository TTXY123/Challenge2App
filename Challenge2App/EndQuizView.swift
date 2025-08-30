//
//  MCQView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI
struct EndQuizView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                Text("Congratulations, you have finished the quiz. Go back to the Learn tab to play some more games!")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 40, weight: .bold))
                    .padding(.horizontal,32)
                    
            }
        }
    }
}
#Preview {
    EndQuizView()
}
