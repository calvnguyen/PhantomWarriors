//
//  MovingPole.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import UIKit
import SpriteKit
import UIKit

class MovingPole: Pole {
    
    var lastLocation:CGPoint = CGPoint.zero
    var moveAmount:CGFloat = 0
    
    func update() {
        
        if (lastLocation != CGPoint.zero) {
            
            moveAmount = self.position.x - lastLocation.x
        }
        
        lastLocation = self.position
        
    }
    
    
    /*
    
    var moveAmount:CGFloat = 1 // will toggle between 1 and -1, and we will pass this value onto thePlayer
    var moveTotal:CGFloat = 0 // when exceeds the max or min range, it will toggle the moveAmount from either 1 to -1
    var moveRange:CGFloat = 100
    
    func update() {
        
        self.position = CGPointMake(self.position.x + moveAmount, self.position.y)
        
        
        moveTotal = moveTotal + moveAmount
        
        if (moveTotal == moveRange) {
            
            moveTotal = 0
            moveAmount = -1
            
        } else if (moveTotal == -moveRange){
            
            moveTotal = 0
            moveAmount = 1
        }
        
        
        
    }*/
    
    
}
