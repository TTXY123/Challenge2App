import SwiftUI
import SpriteKit

struct Game1Level1View: View {
    @StateObject private var gameState = GameState()
    
    var spriteScene: SKScene {
        // Pass gameState into Game1PhysicsScene initializer
        let scene = Game1PhysicsScene(gameState: gameState)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                    Text("drag the ball")
                        .foregroundColor(.black)
                        .font(.title)
                        HStack {
                            SpriteView(scene: spriteScene)
                                .frame(width: 400, height: 800)  // Match frame size to scene size
                                .background(Color.clear)
                        }
                        Spacer()
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
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
                                Game1Level1ExplanationView()
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
    Game1Level1View()
}
