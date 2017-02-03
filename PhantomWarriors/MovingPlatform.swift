//
//  MovingPlatform.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit


class MovingPlatform: Platform {
    
    var lastLocation:CGPoint = CGPoint.zero
    var moveAmountX:CGFloat = 0
    var moveAmountY:CGFloat = 0
    
    func update() {
        
        if (lastLocation != CGPoint.zero) {
            
            moveAmountX = self.position.x - lastLocation.x
            moveAmountY = self.position.y - lastLocation.y
        }
        
        lastLocation = self.position
        
       
        
    }
    
    
}
