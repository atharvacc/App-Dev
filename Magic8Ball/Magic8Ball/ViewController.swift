//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Atharva Chalke on 2/22/19.
//  Copyright © 2019 Atharva Chalke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var BallImage: UIImageView!
    
    @IBAction func RollButton(_ sender: Any) {
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateImage() {
        var ball_names = ["ball1", "ball2", "ball3", "ball4","ball5"]
        var randomBall: Int = Int.random(in: 0 ... 4)
        BallImage.image = UIImage(named: ball_names[randomBall])
        
        
    }


}

