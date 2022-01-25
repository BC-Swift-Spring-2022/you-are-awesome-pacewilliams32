//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Pace Williams on 1/25/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏻 The viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
    @IBAction func secondMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You're Great!"
    }
}

