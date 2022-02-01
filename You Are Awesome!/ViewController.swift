//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Pace Williams on 1/25/22. 
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 4
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        let fantasticMessage = "You Are Fantastic!"
        let fabulousMessage = "Fabulous? That's You!"
        
        let inspireMessages = [awesomeMessage, greatMessage, bombMessage, fantasticMessage, fabulousMessage]
        
        var newMessageNumber : Int
        
        repeat {
            newMessageNumber = Int.random(in: 0...inspireMessages.count-1)
        } while messageNumber == newMessageNumber
                messageNumber = newMessageNumber
                messageLabel.text = inspireMessages[messageNumber]
        
        var newImageNumber : Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
                imageNumber = newImageNumber
                displayImage.image = UIImage(named: "image\(imageNumber)")
                    
                    
                    
                    
    }
    
    
}
