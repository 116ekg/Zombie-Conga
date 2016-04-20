//
//  MainMenuScene.swift
//  Zombie-Conga
//
//  Created by Eddie Keller on 4/18/16.
//  Copyright © 2016 Eddie Keller. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let background = SKSpriteNode(imageNamed:"MainMenu")
        background.position = CGPoint(x:self.size.width/2, y:self.size.height/2)
        self.addChild(background)
        
    }
    
    func sceneTapped() {
        let myScene = GameScene(size:self.size)
        myScene.scaleMode = scaleMode
        let reveal = SKTransition.doorwayWithDuration(1.5)
        self.view?.presentScene(myScene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        sceneTapped()
    }
    
}