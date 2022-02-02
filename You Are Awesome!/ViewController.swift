//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Pace Williams on 1/25/22. 
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 5
    let totalNumberOfSounds = 6
    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func playSound(soundName : String) {
        if let sound = NSDataAsset(name: soundName) {
            do {
               try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not read data from the file sound0")
            }
            
        } else {
            print("ERROR: Could not read data from the file \(soundName)")

        }
    }
    func nonRepeatingRandom(originalNumber : Int, upperBounds : Int) -> Int {
        var newNumber : Int
        
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while originalNumber == newNumber
        return newNumber
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        //Declares messages -- inspireMessages array
        
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        let fantasticMessage = "You Are Fantastic!"
        let fabulousMessage = "Fabulous? That's You!"
        
        let inspireMessages = [awesomeMessage, greatMessage, bombMessage, fantasticMessage, fabulousMessage]
        
        // Calls nonRepeatingRandom func to display random message
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: inspireMessages.count-1)
        messageLabel.text = inspireMessages[messageNumber]
        
       // Displays random image
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages-1)
        displayImage.image = UIImage(named: "image\(imageNumber)")
        
        // Plays random sound
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds-1)
        
        playSound(soundName: "sound\(soundNumber)")
        
    }
    
    
}
