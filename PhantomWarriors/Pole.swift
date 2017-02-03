//
//  Pole.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class Pole: SKSpriteNode {
    
    func setUpPole() {
        
        let body:SKPhysicsBody = SKPhysicsBody(rectangleOf: self.frame.size)
        
        self.physicsBody = body
        body.isDynamic = false
        body.affectedByGravity = false
        body.allowsRotation = false
        
        self.physicsBody?.categoryBitMask = BodyType.pole.rawValue
        self.physicsBody?.collisionBitMask = 0
        self.physicsBody?.contactTestBitMask = BodyType.player.rawValue
        
    }
    
    
}
