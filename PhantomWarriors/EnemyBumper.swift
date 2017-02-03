//
//  EnemyBumper.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class EnemyBumper: SKSpriteNode {
    
    
    
    
    func setUpBumper() {
        
       
        
        self.physicsBody?.categoryBitMask = BodyType.enemybumper.rawValue
        self.physicsBody?.collisionBitMask = BodyType.enemy.rawValue
        self.physicsBody?.contactTestBitMask = BodyType.enemy.rawValue 
        
    }
    
    
}
