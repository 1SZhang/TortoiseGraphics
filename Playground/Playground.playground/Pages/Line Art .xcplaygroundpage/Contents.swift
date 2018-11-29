import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { t in
    
    // Draw 18 small circles rotated around the origin
    for _ in 1...18 {
        t.right(20)
        
        // Draw a small circle
        for _ in 1...18 {
           t.right(20)
            t.forward(20)
            
        }
    }
    for _ in 1...8 {
        for _ in 1...8{
            t.forward(40)
            t.right(90)
            t.forward(40)
            t.right(90)
            t.forward(40)
            t.left(90)
        }
        t.left(90)
    }
    for _ in 1...8 {
        for _ in 1...8{
            t.forward(50)
            t.right(90)
            t.forward(50)
            t.right(90)
            t.forward(50)
            t.left(90)
        }
        t.left(90)
    }
    
    for _ in 1...8 {
        for _ in 1...8{
            t.forward(60)
            t.right(90)
            t.forward(60)
            t.right(90)
            t.forward(60)
            t.left(90)
        }
        t.left(90)
    }
    for _ in 1...8 {
        for _ in 1...8{
            t.forward(70)
            t.right(90)
            t.forward(70)
            t.right(90)
            t.forward(70)
            t.left(90)
        }
        t.left(90)
    }
    for _ in 1...8 {
        for _ in 1...8{
            t.forward(80)
            t.right(90)
            t.forward(80)
            t.right(90)
            t.forward(80)
            t.left(90)
        }
        t.left(90)
    }
    t.penUp()
    t.goto(0,0)
    
    t.penDown()
    for _ in 1...30 {
        
        // Turn a random amount
        let turn = t.random(360)
        t.left(turn)
        
        // Draw a random line length
        let distance = t.random(250)
        t.forward(distance)
        
        // Go back to centre of canvas and original heading
        t.penUp()
        t.goto(0, 0)
        t.setHeading(0)
        t.penDown()
        
    }
    // Make 25 random lines from top left
        for _ in 1...30 {
            // Draw radom line from the corner
            t.penUp()
            t.goto(-250, 250)
            t.penDown()
            t.setHeading(0)
    
            let randomTurn = t.random(90) + 90
            let randomDistence = t.random(240)
            t.right(randomTurn)
            t.forward(randomDistence)
        }
    
        // Make 25 random lines from top right
        for _ in 1...30 {
            // Draw radom line from the corner
            t.penUp()
            t.goto(250, 250)
            t.penDown()
            t.setHeading(0)
    
            let randomTurn = t.random(90) + 180
            let randomDistence = t.random(240)
            t.right(randomTurn)
            t.forward(randomDistence)
        }
    
        // Make 25 random lines from bottom right
        for _ in 1...30 {
            // Draw radom line from the corner
            t.penUp()
            t.goto(250, -250)
            t.penDown()
            t.setHeading(0)
    
            let randomTurn = t.random(90) + 270
            let randomDistence = t.random(240)
            t.right(randomTurn)
            t.forward(randomDistence)
        }
    
        // Make 25 random lines from bottom left
        for _ in 1...30 {
            // Draw radom line from the corner
            t.penUp()
            t.goto(-250,-250)
            t.penDown()
            t.setHeading(0)
            let randomTurn = t.random(90) + 0
            let randomDistence = t.random(240)
            t.right(randomTurn)
            t.forward(randomDistence)
        }
    t.hideTortoise()
}
