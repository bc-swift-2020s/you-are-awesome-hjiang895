//
//  ViewController.swift
//  Two-Button Challenge
//
//  Created by Hannah Jiang on 1/25/20.
//  Copyright © 2020 Hannah Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func leftButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Great!"
    }
    
}

