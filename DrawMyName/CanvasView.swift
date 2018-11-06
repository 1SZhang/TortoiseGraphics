import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { t in
            
            // Add your commands within this block
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
            t.goto(-460, 50)
            
            
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
            t.right(95)
            t.penDown()
            t.penUp()
            t.forward(13)
            t.right(90)
            t.forward(15)
            t.left(90)
            t.penDown()
            t.curve(withSides: -11, withSize: 10, drawSides: 5)
            t.right(42)
            
            // e
            t.penDown()
            t.forward(35)
            
            //Start curve
            t.curve(withSides:-10, withSize: 10, drawSides: 5)
            t.curve(withSides: -20, withSize: 7, drawSides: 3)
            
            // Bottom curve
            t.curve(withSides: -12, withSize: 14, drawSides: 5)
            
            // r
            
            // first curve
            
            t.curve(withSides: -20, withSize: 10, drawSides: 5)
            t.right(170)
            t.penDown()
            t.forward(25)
            t.right(90)
            
            // Last curve
            
            t.curve(withSides: -14, withSize: 10, drawSides: 5)
            
            // Z
            t.penUp()
            t.forward(150)
            t.left(88)
            t.forward(50)
            
            // First curve
            
            t.right(35)
            t.penDown()
            t.forward(18)
            t.curve(withSides: 14, withSize: 12, drawSides: 4)
            t.right(50)
            t.curve(withSides: 35, withSize: 16, drawSides:7)
            // Bottom parts
            
            t.left(184)
            t.penDown()
            t.forward(10)
            t.curve(withSides: 40, withSize: 12, drawSides: 2)
            t.right(60)
            t.curve(withSides: 22, withSize: 18, drawSides: 3)
            t.curve(withSides: 10, withSize: 10, drawSides: 5)
            t.curve(withSides: 38, withSize: 10, drawSides: 6)
            
            // h
            t.left(45)
            t.penDown()
            t.forward(25)
            t.curve(withSides: -30, withSize: 8, drawSides: 5)
        }
    }
    
}
