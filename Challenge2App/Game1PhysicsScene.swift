//
//  Game1PhysicsScene.swift
//  Challenge2App
//
//  Created by Tiffany on 30/8/25.
//

import Foundation
import SpriteKit

struct PhysicsCategory {
    static let circle: UInt32 = 0x1 << 0
    static let stickman: UInt32 = 0x1 << 1
}

class Game1PhysicsScene: SKScene, SKPhysicsContactDelegate {

    var circle: SKShapeNode!
    var touchStartPoint: CGPoint?

    var gameState: GameState?  // Reference to shared game state

    // Convenience initializer to inject gameState
    convenience init(gameState: GameState) {
        self.init()
        self.gameState = gameState
    }

    override func didMove(to view: SKView) {
        backgroundColor = SKColor(red: 1.0, green: 0.9725, blue: 0.9098, alpha: 1.0)
        self.size = CGSize(width: 400, height: 800)

        physicsWorld.contactDelegate = self  // Set contact delegate

        physicsBody = SKPhysicsBody(edgeLoopFrom: frame) // World bounds

        // Create circle node
        circle = SKShapeNode(circleOfRadius: 50)
        circle.fillColor = .white
        circle.strokeColor = .black
        circle.lineWidth = 10
        circle.position = CGPoint(x: size.width - 300, y: size.height - 50)
        circle.name = "circle"

        // Physics body for circle
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 50)
        circle.physicsBody?.affectedByGravity = true
        circle.physicsBody?.friction = 0.5
        circle.physicsBody?.allowsRotation = true
        circle.physicsBody?.restitution = 0.6

        // Set category and collision/contact bit masks for circle
        circle.physicsBody?.categoryBitMask = PhysicsCategory.circle
        circle.physicsBody?.contactTestBitMask = PhysicsCategory.stickman
        circle.physicsBody?.collisionBitMask = PhysicsCategory.stickman

        addChild(circle)

        // Create stickman node
        let stickman = SKSpriteNode(imageNamed: "StickMan")
        stickman.name = "stickman"
        stickman.size = CGSize(width: 100, height: 150)
        stickman.position = CGPoint(x: 370, y: 200)

        // Physics body for stickman - static, no collisions but detects contact
        stickman.physicsBody = SKPhysicsBody(rectangleOf: stickman.size)
        stickman.physicsBody?.isDynamic = false
        stickman.physicsBody?.categoryBitMask = PhysicsCategory.stickman
        stickman.physicsBody?.contactTestBitMask = PhysicsCategory.circle
        stickman.physicsBody?.collisionBitMask = 0  // No physical collision
        stickman.physicsBody?.usesPreciseCollisionDetection = true

        addChild(stickman)

        // Create slope
        let slopePath = CGMutablePath()
        slopePath.move(to: CGPoint(x: 350, y: 0))
        slopePath.addLine(to: CGPoint(x: 350, y: 0))
        slopePath.addLine(to: CGPoint(x: -100, y: 0))
        slopePath.addLine(to: CGPoint(x: -100, y: 400))
        slopePath.addLine(to: CGPoint(x: 50, y: 400))
        slopePath.addLine(to: CGPoint(x: 200, y: 30))
        slopePath.addLine(to: CGPoint(x: 350, y: 30))
        slopePath.closeSubpath()

        let slope = SKShapeNode(path: slopePath)
        slope.fillColor = .gray
        slope.position = CGPoint(x: 100, y: 100)
        slope.physicsBody = SKPhysicsBody(edgeLoopFrom: slopePath)
        slope.physicsBody?.isDynamic = false
        addChild(slope)
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)

        // Check if touch began inside the circle
        if circle.contains(location) {
            touchStartPoint = location
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first, let start = touchStartPoint else { return }
        let end = touch.location(in: self)

        // Calculate force vector
        let dx = end.x - start.x
        let dy = end.y - start.y

        let scale: CGFloat = 5.0
        let maxForce: CGFloat = 1000.0
        let force = CGVector(
            dx: max(min(dx * scale, maxForce), -maxForce),
            dy: max(min(dy * scale, maxForce), -maxForce)
        )

        // Apply force if started inside circle
        if circle.contains(start) {
            circle.physicsBody?.applyForce(force)
        }

        touchStartPoint = nil
    }

    // MARK: - SKPhysicsContactDelegate

    func didBegin(_ contact: SKPhysicsContact) {
        let bodyA = contact.bodyA
        let bodyB = contact.bodyB

        // Check if circle contacts stickman
        if (bodyA.categoryBitMask == PhysicsCategory.circle && bodyB.categoryBitMask == PhysicsCategory.stickman) ||
            (bodyB.categoryBitMask == PhysicsCategory.circle && bodyA.categoryBitMask == PhysicsCategory.stickman) {

            print("Player wins! Circle touched stickman!")

            // Notify SwiftUI game state
            gameState?.didWin = true

            // Optionally pause the scene to stop further physics updates
            self.isPaused = true
        }
    }
}
