//
//  Game1Level3View.swift
//  Challenge2App
//
//  Created by Tiffany on 30/8/25.
//

import SwiftUI
import SpriteKit

struct Game1Level3View: View {
    @StateObject private var gameState = GameState()
    
    var spriteScene: SKScene {
        // Pass gameState into Game1PhysicsScene initializer
        let scene = Game1Level3PhysicsScene(gameState: gameState)
        scene.size = CGSize(width: 400, height: 800) // Match scene size to your SKScene
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                
                // SpriteKit view
                VStack {
                    Spacer()
                    HStack {
                        SpriteView(scene: spriteScene)
                            .frame(width: 400, height: 800)  // Match frame size to scene size
                            .background(Color.clear)
                    }
                    Spacer()
                }
                
                // Win overlay
                if gameState.didWin {
                    VStack(spacing: 20) {
                        Text(" You Win! ")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.white)
                                    .shadow(radius: 10)
                            )
                        
                            NavigationLink {
                                Game1Level3ExplanationView()
                            } label: {
                                Text("Next->")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .padding(.vertical, 20)
                                    .padding(.horizontal, 100)
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2))
                            }                        }
                    }
                }
            }
        }
}


#Preview {
    Game1Level3View()
}
