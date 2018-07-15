//
//  ViewController.swift
//  Dicee Game
//
//  Created by Ghufran nour  on 26/10/1439 AH.
//  Copyright © 1439 Ghufran nour . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0
    
    let diceArray = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5" , "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDice()
    }
    
    
    func updateDice() {
        randomDiceeIndex1 = Int (arc4random_uniform(6))
        randomDiceeIndex2 = Int (arc4random_uniform(6))
        
        print(randomDiceeIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceeIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceeIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
}

