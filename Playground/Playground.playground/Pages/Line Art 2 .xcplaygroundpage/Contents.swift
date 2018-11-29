import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { t in

    t.left(65)
    t.forward(276)
    t.right(90)
    t.forward(65)
    t.right(90)
    t.forward(175)
    t.forward(65)
    t.right(90)
    t.forward(65)
    t.penUp()
    t.left(90)
    t.forward(45)
    t.right(90)
    t.penDown()
    t.penUp()
    t.forward(32)
    t.penDown()
    t.right(90)
    t.forward(270)
    t.penUp()
    t.right(180)
    t.forward(270)
    t.penDown()
    t.forward(280)
    t.right(90)
    t.forward(95)
    t.right(90)
    t.forward(270)
    t.right(90)
    t.forward(65)
    t.right(90)
    t.forward(270)
    t.penUp()
    t.left(180)
    t.forward(270)
    t.right(90)
    t.penDown()
    t.forward(30)
    t.penUp()
    t.forward(32)
    t.right(90)
    t.backward(26)
    t.penDown()
    t.forward(300)
    t.penUp()
    t.goto(0, 0)
    t.left(55)
    // Top right blade
    t.penDown()
    t.forward(280)
    t.penUp()
    t.backward(280)
    t.right(180)
    t.forward(40)
    t.penDown()
    t.forward(245)
    t.penUp()
    t.right(180)
    t.forward(565)
    t.penDown()
    t.left(90)
    t.forward(25)
    t.left(90)
    t.forward(300)
    t.penUp()
    t.right(180)
    t.forward(52)
    t.penDown()
    t.left(90)
    t.forward(65)
    t.right(90)
    t.forward(248)
    t.right(90)
    t.forward(65)
    // bottom left blade
    t.penUp()
    t.right(90)
    t.forward(338)
    t.penDown()
    t.forward(225)
    t.left(90)
    t.forward(90)
    t.left(90)
    t.forward(220)
    t.left(90)
    t.forward(90)
    t.penUp()
    t.right(180)
    t.penUp()
    t.forward(25)
    t.penDown()
    t.hideTortoise()

    
    
    
    
    
    
    
    
    
    

}

