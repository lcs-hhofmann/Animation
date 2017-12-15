import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var speedX : Int
    var y : Int
    var speedY : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        y = 250
        speedX = 1
        speedY = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        x = x+speedX
        y = y+speedY
        
        // Change position
        if x == 500 {
            speedX = Int(-2.5)
        }
        
        if x == 0 {
            speedX = Int(2.5)
        }
//
        if y == 0 {
            speedY = 2
        }
        
        if y == 500 {
            speedY = -2
            
        }
        
    
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    

}
