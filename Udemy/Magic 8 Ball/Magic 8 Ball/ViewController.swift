//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ghufran nour  on 26/10/1439 AH.
//  Copyright © 1439 Ghufran nour . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1" ,"ball2" ,"ball3" ,"ball4" , "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

