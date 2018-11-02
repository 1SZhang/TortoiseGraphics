//
//  extensions.swift
//  TortoiseGraphics
//
//  Created by Zhang, Peter on 2018-10-25.
//

import Foundation
public extension Tortoise {

    func square(withSize size: Double) {
        //"self " refers to any instance of the
        // tortoise class
        self.penDown()
        //Draw four side squar
        for _ in 1...4 {
            self.forward(size)
            self.right(90)

        }

        self.penUp()

    }

    func trapezoid() {  //left side
        self.right(30)
        self.forward(50)

        //Topside
        self.right(60)
        self.forward(100)

        // right side
        self.right(60)
        self.forward(50)

        // bottom side
        self.right(120)
        self.forward(150)

        // Orignal point
        self.right(90)

    }

    func curve(withSides sideCount: Int, withSize size: Double, drawSides sideLimit: Int) {
        self.penDown()
        for _ in 1...sideLimit {
            self.forward(size)
            self.right(360/Double(sideCount))
        }
        self.penUp()
    }
}
