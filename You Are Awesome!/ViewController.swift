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
    
    var imageNumber = 0
    var messageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let imageName = "image\(Int.random(in: 0...2))"
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        
        var inspireMessages = [awesomeMessage, greatMessage, bombMessage]
        messageLabel.text = inspireMessages[Int.random(in: 0...inspireMessages.count-1)]
        
        displayImage.image = UIImage(named: imageName)
        // messageLabel.text = inspireMessages[messageNumber]
        //        imageNumber = imageNumber + 1
        //        if imageNumber == 3 {
        //            imageNumber = 0
        //        }
        //       // messageNumber += 1
        //        //if messageNumber == inspireMessages.count {
        //          //  messageNumber = 0
        //        }
        //  let awesomeMessage = "You Are Awesome!"
        //let greatMessage = "You Are Great!"
        //let bombMessage = "You Are Da Bomb!"
        
        //
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            messageLabel.textColor = UIColor.blue
        //            displayImage.image = UIImage(named: "image1")
        //        } else if messageLabel.text == greatMessage{
        //            messageLabel.text = bombMessage
        //            messageLabel.textColor = UIColor.magenta
        //            displayImage.image = UIImage(named: "image2")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            messageLabel.textColor = UIColor.red
        //            displayImage.image = UIImage(named: "image0")
        //        }
        //
    }
    
    
}
