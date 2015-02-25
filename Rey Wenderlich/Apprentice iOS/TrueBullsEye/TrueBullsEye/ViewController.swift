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
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var currentValue = 0
    var targetValue = 0
    var totalScore = 0
    var round = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.startNewRound()
        updateLabels()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startNewRound() {
        
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        round += 1
        
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(totalScore)
        roundLabel.text = "\(round)"
    }
    
    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        totalScore += points
        
//        let message = "The value of the slider is now: \(currentValue)" + "\nThe target value is \(targetValue)"
        
        let message = "You scored \(points) points" + "\nSlider value = \(currentValue)" + "\nTarget value = \(targetValue)"
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        
        self.startNewRound()
        updateLabels()
        
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        
        currentValue = lroundf(slider.value)
        
//        println("The value of the slider is now: \(slider.value)")
        
    }
    
}


/*

old code

func compareValues() {
    
    var difference: Int
    if currentValue > targetValue {
        difference = currentValue - targetValue
    } else if targetValue > currentValue {
        difference = targetValue - currentValue
    } else {
        difference = 0
    }
    println(difference)
    
}


func compareValues() {
    
    var difference = currentValue - targetValue
    if difference < 0 {
        difference = -difference
    }
    
}

*/
