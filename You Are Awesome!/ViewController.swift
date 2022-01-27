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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            messageLabel.textColor = UIColor.blue
            displayImage.image = UIImage(named: "image1")
        } else if messageLabel.text == greatMessage{
            messageLabel.text = bombMessage
            messageLabel.textColor = UIColor.magenta
            displayImage.image = UIImage(named: "image2")
        } else {
            messageLabel.text = awesomeMessage
            messageLabel.textColor = UIColor.red
            displayImage.image = UIImage(named: "image0")
        }
        
    }
}

