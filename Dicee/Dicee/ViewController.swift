//
//  ViewController.swift
//  Dicee
//
//  Created by Atharva Chalke on 2/20/19.
//  Copyright © 2019 Atharva Chalke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    let diceArray = ["dice1", "dice2", "dice3","dice4","dice5",
                     "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
        
    }
    
    func updateDice() {
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
        diceImageView1.image  = UIImage(named: diceArray[randomDice1])
        diceImageView2.image  = UIImage(named: diceArray[randomDice2])
    }
    
}

