//
//  ViewController.swift
//  4HowManyFingers
//
//  Created by Bobby Towers on 1/25/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var answerLabel: UILabel!
    
    @IBOutlet var guessTextField: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        // computer's theoretical fingers between 0-10
        var computerFingers = Int(arc4random_uniform(11))
        
        var playersGuess = guessTextField.text.toInt()
        
        if playersGuess != nil && playersGuess >= 0 && playersGuess <= 10 {
            
            if playersGuess == computerFingers {
                
                answerLabel.text = "Correcto-mundo! Rerolling."
                
                
            } else {
                
                answerLabel.text = "Nope, it was \(computerFingers)."
            }
            
        } else {
            
            answerLabel.text = "Sorry, please enter a valid guess."
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

