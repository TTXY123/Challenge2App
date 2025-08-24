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
                    
                    Spacer()
                    // Image
                    Image("Slope")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 800, height: 400)
                    
                    Spacer()
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()

                        Image("StickMan")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(.bottom, 100)

                        Spacer()
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()

                        Circle()
                            .fill(Color.white)
                            .stroke(Color.black, lineWidth: 10)
                            .frame(width: 100, height: 150)
                            .padding()
                        Spacer()
                        Spacer()

                    }
                    Spacer()
                    Spacer()
                    Spacer()


                }
            }

        }
    }
}

#Preview {
    Game1Level1View()
}
