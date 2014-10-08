//
//  ViewController.swift
//  NY
//
//  Created by Maickell Vilela on 07/10/14.
//  Copyright (c) 2014 Maickell Vilela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var dice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        if event.subtype == UIEventSubtype.MotionShake {
            
            var aleatory = arc4random_uniform(6) + 1
            
            switch aleatory {
                
                case 1 : dice.image = UIImage(named: "One.png")
                
                case 2 : dice.image = UIImage(named: "Two.png")
                
                case 3 : dice.image = UIImage(named: "Three.png")
                
                case 4 : dice.image = UIImage(named: "Four.png")
                
                case 5 : dice.image = UIImage(named: "Five.png")
                
                case 6 : dice.image = UIImage(named: "Six.png")
                
                default : 6
            }
            
            println("The Dice face is \(aleatory)")
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

