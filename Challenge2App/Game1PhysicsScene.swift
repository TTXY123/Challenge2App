//
//  Game1PhysicsScene.swift
//  Challenge2App
//
//  Created by Tiffany on 30/8/25.
//

import Foundation  // Imports basic functionality like data types, dates, etc.
import SpriteKit   // Imports SpriteKit, the framework.




class Game1PhysicsScene: SKScene, SKPhysicsContactDelegate {
    //Custom game scene that uses SpriteKit. also handles contacts between opbjects and make physics have an affect of them(collisions).
    
    var circle: SKShapeNode!  // A shape node representing the circle
    var touchStartPoint: CGPoint?  // Stores where the user first touched the screen

    var gameState: GameState?  // win/lose status


    // Custom initializer to receive and store the gameState
    convenience init(gameState: GameState) {
        self.init()  // Call the default initializer
        self.gameState = gameState  // Stores the passed-in gameState
    }

    override func didMove(to view: SKView) { // when the scene appears on the screen

        backgroundColor = SKColor(red: 1.0, green: 0.9725, blue: 0.9098, alpha: 1.0) // Set the background color to this colour

        self.size = CGSize(width: 400, height: 800) // size of the scene


        physicsWorld.contactDelegate = self // make physics apply(eg collisions)

        physicsBody = SKPhysicsBody(edgeLoopFrom: frame) // invisible walls around the scene so objects don’t fall off


        // Create a circle shape (node)
        circle = SKShapeNode(circleOfRadius: 50)
        circle.fillColor = .white                 // colour of the inside of the circle
        circle.strokeColor = .black               // Border color of the circle
        circle.lineWidth = 10                     // Border thickness of circle
        circle.position = CGPoint(x: size.width - 300, y: size.height - 50)   // Place it at these coords
        circle.name = "circle"  // Naming the circle


        // control the physics of the circle
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 50)
        circle.physicsBody?.affectedByGravity = true  // Falls with gravity
        circle.physicsBody?.friction = 0.5  // set the amt of friction
        circle.physicsBody?.allowsRotation = true  // Can spin
        circle.physicsBody?.restitution = 0.6  // control bounciness


        // Set up collision rules
        circle.physicsBody?.categoryBitMask = PhysicsCategory.circle
        circle.physicsBody?.contactTestBitMask = PhysicsCategory.stickman   // 'Notify' when touching the stickman
        circle.physicsBody?.collisionBitMask = PhysicsCategory.stickman     // Physically bounce off the stickman

        addChild(circle)  // Add circle to the scene


        // make the stickman part of this so that collision can be detected
        let stickman = SKSpriteNode(imageNamed: "StickMan")
        stickman.name = "stickman"                         //naming the stickman
        stickman.size = CGSize(width: 100, height: 150)    //size of stickman
        stickman.position = CGPoint(x: 370, y: 200)        //set coordinates of stickman


        // Add physics body to stickman
        stickman.physicsBody = SKPhysicsBody(rectangleOf: stickman.size)
        stickman.physicsBody?.isDynamic = false          // Doesn’t move or fall
        stickman.physicsBody?.categoryBitMask = PhysicsCategory.stickman
        stickman.physicsBody?.contactTestBitMask = PhysicsCategory.circle   // Detect if circle touches it
        stickman.physicsBody?.collisionBitMask = 0  // Circle won’t bounce off but detects contact
        stickman.physicsBody?.usesPreciseCollisionDetection = true  // Makes contact detection more accurate

        addChild(stickman)  // Add stickman to the scene


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
        
        //those are the coordinates for each point to create the shape of the slope

        let slope = SKShapeNode(path: slopePath)
        slope.fillColor = .gray  // slope color
        slope.position = CGPoint(x: 100, y: 100)  // Move it to these coords
        slope.physicsBody = SKPhysicsBody(edgeLoopFrom: slopePath)
        slope.physicsBody?.isDynamic = false  // make it not move and stay in position
        addChild(slope)  // Add slope to the scene
    }



    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        
        // Check if user touched the circle
        if circle.contains(location) {
            touchStartPoint = location  // Store starting point
        }
    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first, let start = touchStartPoint else { return }
        let end = touch.location(in: self)

        // Calculate force & how far the user dragged
        let dx = end.x - start.x
        let dy = end.y - start.y

        let scale: CGFloat = 5.0        // Increase drag strength
        let maxForce: CGFloat = 1000.0  // limit states max force
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
