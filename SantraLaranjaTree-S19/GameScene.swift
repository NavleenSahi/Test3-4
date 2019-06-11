//
//  GameScene.swift
//  SantraLaranjaTree-S19
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 ms. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
   
    
    
    override func didMove(to view: SKView) {
   
    }
    
    func makeOrange(xPosition:CGFloat, yPosition:CGFloat) {
        
        // 1. create an orange sprite
        let orange = SKSpriteNode(imageNamed: "Orange")
        
        // 2. set initial position of orange to be same
        // as where mouse is clicked
        orange.position.x = xPosition;
        orange.position.y = yPosition;
        
        // 3. set physics for the orange
        // -- dyanmic = true
        // -- gravity = true
        // Both are true by default
        
        
        // 4. Add the orange to the scene
        addChild(orange)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // 1. detect where the person clicked
        let touch = touches.first!
        let mousePosition = touch.location(in:self)
        
        // 2. make an orange in the same position as mouse click
        self.makeOrange(
            xPosition:mousePosition.x,
            yPosition:mousePosition.y)
        
    }
    
    
    
    
}
