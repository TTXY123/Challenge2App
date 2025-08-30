//
//  MCQView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI

struct MCQView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                NavigationLink {
                    Question1View()
                } label: {
                    Text("Start Quiz (5 questions)")
                        .foregroundColor(.black)
                        .padding(50)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 5)
                }
            }
        }
    }
}

#Preview {
    MCQView()
}
