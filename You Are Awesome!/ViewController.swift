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
        print("👍🏻 The viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
        messageLabel.textColor = UIColor.red
        messageLabel.textAlignment = .left
        displayImage.image = UIImage(named: "image0")
    }
    
    @IBAction func secondMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You're Great!"
        messageLabel.textColor = UIColor.blue
        messageLabel.textAlignment = .right
        displayImage.image = UIImage(named: "image1")

    }
}

