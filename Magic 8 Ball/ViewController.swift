//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Minhee Kang on 2/4/19.
//  Copyright © 2019 Minhee Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArr = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        produceRandomSaying()
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        produceRandomSaying()
    }
    
    func produceRandomSaying() {
        randomBallNumber = Int(arc4random_uniform(5))
        print(randomBallNumber)
        imageView.image = UIImage(named: ballArr[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        produceRandomSaying()
    }
    

    
}

