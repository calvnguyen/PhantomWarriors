//
//  Home_Touches.swift
//  Phantom Warrior
//
//  Created by Calvin Nguyen on 1/31/17.
//  Copyright © 2017 Calvin Nguyen. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit


extension Home {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        
        
        
        
        for touch in (touches ) {
            let location = touch.location(in: self)
            
            
            self.enumerateChildNodes(withName: "//*") {
                node, stop in
                
                if (node is Button){
                    
                    
                    
                    if let someButton:Button = node as? Button {
                        
                        
                        if ( someButton.frame.contains(location) ){
                        
                            self.selectedButton!.deselect()
                            
                        someButton.select()
                        
                        self.selectedButton = someButton
                        
                        self.pressedSelect()
                        
                        }
                        
                    }
                    
                    
                }
                
            }
            
        }
    }
    
    
    
}
