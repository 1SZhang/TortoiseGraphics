import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
    // Draw 18 small circles rotated around the origin
    for _ in 1...18 {
        turtle.right(20)

        // Draw a small circle
        for _ in 1...18 {
            turtle.right(20)
            turtle.forward(20)

        }
    }
    
    // Make 25 random lines from top left
    for _ in 1...30 {
        // Draw radom line from the corner
        turtle.penUp()
        turtle.goto(-250, 250)
        turtle.penDown()
        turtle.setHeading(0)
        
        let randomTurn = turtle.random(90) + 90
        let randomDistence = turtle.random(240)
        turtle.right(randomTurn)
        turtle.forward(randomDistence)
    }

    // Make 25 random lines from top right
    for _ in 1...30 {
        // Draw radom line from the corner
        turtle.penUp()
        turtle.goto(250, 250)
        turtle.penDown()
        turtle.setHeading(0)
        
        let randomTurn = turtle.random(90) + 180
        let randomDistence = turtle.random(240)
        turtle.right(randomTurn)
        turtle.forward(randomDistence)
    }

    // Make 25 random lines from bottom right
    for _ in 1...30 {
        // Draw radom line from the corner
        turtle.penUp()
        turtle.goto(250, -250)
        turtle.penDown()
        turtle.setHeading(0)
        
        let randomTurn = turtle.random(90) + 270
        let randomDistence = turtle.random(240)
        turtle.right(randomTurn)
        turtle.forward(randomDistence)
    }

    // Make 25 random lines from bottom left
    for _ in 1...30 {
        // Draw radom line from the corner
        turtle.penUp()
        turtle.goto(-250,-250)
        turtle.penDown()
        turtle.setHeading(0)
        let randomTurn = turtle.random(90) + 0
        let randomDistence = turtle.random(240)
        turtle.right(randomTurn)
        turtle.forward(randomDistence)
    }

}
