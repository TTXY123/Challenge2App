//
//  Game1Level1View.swift
//  Challenge2App
//
//  Created by Tiffany on 23/8/25.
//

import SwiftUI

struct Game1Level1View: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                
                VStack {
                    // Title
                    Text("Game 1")
                        .font(.largeTitle)
                        .padding(.top, 50)
                    
                    // Subtitle
                    Text("Objective: Kill the Stickman")
                        .font(.title2)
                        .padding(.bottom, 30)
                    
                    // Image
                    Image("Slope")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 100)
                    
                    Spacer()
                }

            }

        }
    }
}

#Preview {
    Game1Level1View()
}
