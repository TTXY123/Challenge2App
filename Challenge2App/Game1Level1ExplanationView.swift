//
//  Game1Level1ExplanationView.swift
//  Challenge2App
//
//  Created by Tiffany on 30/8/25.
//

import SwiftUI

struct Game1Level1ExplanationView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Game 1")
                        .font(.largeTitle)
                    Text("Objective: Kill the stickman.")
                        .font(.title2)
                    Text("""
                    • Gravitational Forces were acting on the ball
                    • Gravitational.....insert sci fact
                    """)

                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.vertical, 50)
                        .padding(.horizontal, 80)
                        .background(Color.white)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2))
                    NavigationLink {
                        Game1Level2View()
                    } label: {
                        Text("Start Level 2")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.vertical, 20)
                            .padding(.horizontal, 120)
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 2))
                    }
                }
            }
        }
    }
}
#Preview {
    Game1Level1ExplanationView()
}
