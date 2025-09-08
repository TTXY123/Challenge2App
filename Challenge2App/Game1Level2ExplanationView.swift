//
//  Game1Level2ExplanationView.swift
//  Challenge2App
//
//  Created by Tiffany on 30/8/25.
//

import SwiftUI

struct Game1Level2ExplanationView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Level 2")
                        .font(.largeTitle)
                    Text("Objective: Kill the stickman.")
                        .font(.title2)
                    Text("""
                    • How many times did you have to push the ball this time?
                    • More times. This is because the surface is rough, increasing friction between the ball and the surface.
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
                        Game1Level3View()
                    } label: {
                        Text("Start Level 3")
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
    Game1Level2ExplanationView()
}
