//
//  Coin.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class Coin: SKSpriteNode {
    
    var score:Int = 1
    var sound:String = "Coin"
    
    
    func setUpCoin() {
        
        self.physicsBody?.categoryBitMask = BodyType.coin.rawValue
        self.physicsBody?.collisionBitMask = BodyType.platform.rawValue |  BodyType.coin.rawValue
        self.physicsBody?.contactTestBitMask = BodyType.player.rawValue
        
        if ( self.name!.range(of: "Coin") != nil ){
            
            
            let numberForScore:String = self.name!.replacingOccurrences(of: "Coin", with: "", options:String.CompareOptions.caseInsensitive , range: nil)
            
        
            score = Int(numberForScore)!

        }
        
    }
    
    
}
