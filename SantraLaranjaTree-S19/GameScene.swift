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
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)

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
        orange.physicsBody = SKPhysicsBody(circleOfRadius: orange.size.width/2)
        
        // 4. Add the orange to the scene
        addChild(orange)
        
        
        let throwOrange = SKAction.applyImpulse(
            CGVector(dx:50, dy:100),
            duration: 0.5)
        orange.run(throwOrange)
        
        
    }
    
    
    var mouseStartingPosition:CGPoint = CGPoint(x:0, y:0)
    
    // MARK: Detect when finger goes down
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // 1. detect where the person clicked
        let touch = touches.first!
        let mousePosition = touch.location(in:self)
        
        // 2. if person clicked tree, then
        // make an orange
        
        // 2a. What did the person click?
        let spriteTouched = self.atPoint(mousePosition)
        
        // 2b. If person click tree, then make orange
        if (spriteTouched.name == "tree") {
            self.mouseStartingPosition = mousePosition
        }
        
    } // end touchesBegan code
    
    
    // MARK: Detect when finger goes up
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // 1. detect where the person lifted finger up
        let touch = touches.first!
        let mousePosition = touch.location(in:self)
        
        print("Starting position: \(mouseStartingPosition.x), \(mouseStartingPosition.y)")
        print("Ending position: \(mousePosition.x), \(mousePosition.y)")
        
        
        
        
        
        // make an orange in the same position as mouse click
//        self.makeOrange(
//            xPosition:mousePosition.x,
//            yPosition:mousePosition.y)
//
        
    } // end touches ended
    
    
    
    
    
    
    
    
}
