//: # With a tortoise🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 1000, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 36
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { t in

    // Reset
    t.penUp()
    t.showTortoise()
    t.goto(-550, 50)
    t.setHeading(90)
    
    // Draw lower guide line
    t.penColor(.black)
    t.penUp()
    t.penSize(1)
    t.forward(50)
    t.penDown()
    t.forward(1000)
    
    // Draw upper guide line
    t.left(90)
    t.forward(150)
    t.left(90)
    t.forward(1000)
    t.left(90)
    t.forward(165)
    t.left(90)
    // P
    
    // Draw stick
    t.penColor(.white)
    t.right(-180)
    t.penColor(.black)
    t.goto(-470,200)
    t.right(180)
//    t.forward(25)
    t.right(-727)
    
    // p curve
    t.curve(withSides: 20, withSize: 13, drawSides: 13)
     t.right(110)
    t.penUp()
    t.goto(-489, 50)
    
    
    // e
    t.penDown()
    t.forward(55)
    
    //Start curve
    t.curve(withSides:-10, withSize: 10, drawSides: 5)
    t.curve(withSides: -20, withSize: 7, drawSides: 3)
    
    // Bottom curve
    t.curve(withSides: -12, withSize: 14, drawSides: 5)
    
    //t
    t.curve(withSides: -20, withSize: 15, drawSides: 5)
    
    // stright line
    t.right(230)
    t.forward(35)
    t.left(90)
    t.penDown()
    t.forward(25)
    //Bottom curve
    
    
    
    
    
    


    
   
    
    
    

    
    
    
    
    
}

