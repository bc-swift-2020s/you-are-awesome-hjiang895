//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Hannah Jiang on 1/20/20.
//  Copyright © 2020 Hannah Jiang. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberofSounds = 4
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset (name: name) {
                   do {
                       try audioPlayer = AVAudioPlayer (data: sound.data)
                       audioPlayer.play()
                   }catch {
                       print("ERROR: \(error.localizedDescription) could not initalize AVAudioPlayer object")
                   }
               }
                   else {
                       print("ERROR: could not read data from file")
                   }
               
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int{
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Fantastic? That's you!",
                        "When the genius bar needs help, they call you",
                        "You've got the design skills of Jony Ive"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count - 1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages - 1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberofSounds - 1)
        playSound(name: "sound\(soundNumber)")
        
        
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
//
        
        
//        print(imageNumber)
//        //let imageName = "image" + String(imageNumber)
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
        
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
        //        else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image1")
        //        }
        //        else {
        //            messageLabel.text = "You Are Awesome!"
        //            imageView.image = UIImage(named: "image2")
        
        
        }
    
    }


