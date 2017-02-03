//
//  DeadZone.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class DeadZone: SKSpriteNode {
    
    
    func setUpDeadZone() {
        
     
        self.physicsBody?.categoryBitMask = BodyType.deadZone.rawValue
        self.physicsBody?.collisionBitMask = BodyType.player.rawValue | BodyType.platform.rawValue  | BodyType.enemy.rawValue
        self.physicsBody?.contactTestBitMask = BodyType.player.rawValue
        
    }
    
    
    
}
