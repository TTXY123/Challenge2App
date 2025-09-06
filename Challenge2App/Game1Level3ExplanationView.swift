//
//  Game1Level3ExplanationView.swift
//  Challenge2App
//
//  Created by Tiffany on 6/9/25.
//

import SwiftUI

struct Game1Level3ExplanationView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Level 3")
                        .font(.largeTitle)
                    Text("Objective: Kill the stickman.")
                        .font(.title2)
                    Text("""
                    • The ball started at higher ground, so it had gravitational potential energy (GPE). As it rolled down, GPE converted to kinetic energy and heat energy. Because the left side was lower, the ball still had enough energy to reach it despite losing some energy as heat energy.
                    • Do you think the ball would've hit the stickman if the left side was higher than the left?
                    """)

                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                        .background(Color.white)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2))

                    NavigationLink {
                        Game1Level3View()
                    } label: {
                        Text("Press the Learn Tab to return")
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
    Game1Level3ExplanationView()
}
