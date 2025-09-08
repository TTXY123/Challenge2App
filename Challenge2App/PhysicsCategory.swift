//
//  PhysicsCategory.swift
//  Challenge2App
//
//  Created by Tiffany on 30/8/25.
//

import Foundation
// imports the Foundation framework
struct PhysicsCategory {
    //defines a structure (struct) called PhysicsCategory.
    // A struct is like a container that can hold related values together.
    // In this case, we are grouping different physics categories into one place.
    
    static let circle: UInt32 = 0x1 << 0
    // This creates a constant called 'circle' in the struct
    // 'static' : you can access it without creating an instance of PhysicsCategory.
    // 'UInt32' means it's an unsigned 32-bit number (used here for physics bitmasks).
    // '0x1 << 0' means we're shifting the binary number 1 by 0 places to the left, which is still just 1.
    // So, 'circle' is set to the binary value 0001 (which is just 1 in decimal).
    
    static let stickman: UInt32 = 0x1 << 1
    // This creates another constant called 'stickman' in struct
    // '0x1 << 1' means we're shifting the binary number 1 by 1 place to the left.
    // So it becomes 0010 in binary (which is 2 in decimal).
    // gives 'stickman' a different 'name' than 'circle' so they can be told apart in calculations for the physics
}
