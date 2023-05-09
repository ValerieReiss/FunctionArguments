//
//  GameScene.swift
//  Argument Int
//
//  Created by Valerie on 09.05.23.
//


import SpriteKit
import GameplayKit

let turnleft = SKSpriteNode(imageNamed: "command-turnleft")
let turnright = SKSpriteNode(imageNamed: "command-turnright")
let forward = SKSpriteNode(imageNamed: "command-forward")

class GameScene: SKScene{

    var bg = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
        createCommands()

    }
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let location = touch.location(in: self)
            let nodeTouched = atPoint(location)
            if nodeTouched.name == "forward" {
                fillup(number: 1)
            }
            else if nodeTouched.name == "turnleft" {
                fillup(number: 0)
            }
            else if nodeTouched.name == "turnright" {
                fillup(number: 2)
            }
            
            }
        }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
            
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    func didBegin(_ contact: SKPhysicsContact){
    }

    override func update(_ currentTime: TimeInterval) {
    }
    
    func createCommands(){
        forward.name = "forward"
        forward.position = CGPoint(x: 260, y: 10)
        forward.setScale(1.2)
        addChild(forward)
        turnleft.name = "turnleft"
        turnleft.position = CGPoint(x: 260, y: 60)
        turnleft.setScale(1.2)
        addChild(turnleft)
        turnright.name = "turnright"
        turnright.position = CGPoint(x: 260, y: -40)
        turnright.setScale(1.2)
        addChild(turnright)
    }
    
    func fillup(number: Int){
            if number == 0 {
                print ("0")
                let bla = SKSpriteNode(imageNamed: "command-turnleft")
                addChild(bla)
            }
            else if number == 1 {
                print ("1")
                let bla = SKSpriteNode(imageNamed: "command-forward")
                addChild(bla)
            }
            else if number == 2 {
                print ("2")
                let bla = SKSpriteNode(imageNamed: "command-turnright")
                addChild(bla)
            }
            else { return }
    }
    
}
