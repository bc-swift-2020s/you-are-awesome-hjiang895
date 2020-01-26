//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Hannah Jiang on 1/20/20.
//  Copyright © 2020 Hannah Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic?",
                        "Fantastic? That's you!",
                        "When the genius bar needs help, they call you",
                        "You've got the design skills of Jony Ive"]
        messageLabel.text = messages[Int.random(in: 0...messages.count - 1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
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


