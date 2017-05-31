import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = Canvas(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
canvas.animationInterval = 0.01
PlaygroundPage.current.liveView = canvas

canvas.play { 🐢 in
    
    func square(_ side: Double) {
        🐢.repeat(4) {
            🐢.forward(side)
            🐢.right(90)
        }
    }
    
    🐢.penColor(.red)
    🐢.repeat(36) {
        square(50)
        🐢.right(10)
    }

}
