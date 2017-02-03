//
//  Bumper.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class Bumper: SKSpriteNode {
    
    
    
    
    func setUpBumper() {
        
       
        
        self.physicsBody?.categoryBitMask = BodyType.bumper.rawValue
        self.physicsBody?.collisionBitMask =  BodyType.player.rawValue | BodyType.bullet.rawValue | BodyType.ammo.rawValue
        self.physicsBody?.contactTestBitMask =  BodyType.bullet.rawValue 
        
    }
    
    
}
