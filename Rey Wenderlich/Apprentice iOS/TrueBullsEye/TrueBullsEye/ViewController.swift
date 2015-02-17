//
//  ViewController.swift
//  TrueBullsEye
//
//  Created by Bobby Towers on 2/17/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 0
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.startNewRound()
        //        currentValue = lroundf(slider.value)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startNewRound() {
        
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is now: \(currentValue)" + "\nThe target value is \(targetValue)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
        self.startNewRound()
        
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        
        currentValue = lroundf(slider.value)
        
        //        println("The value of the slider is now: \(slider.value)")
        
    }
    
}
