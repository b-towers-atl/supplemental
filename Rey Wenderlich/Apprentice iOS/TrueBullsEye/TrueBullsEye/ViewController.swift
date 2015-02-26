//
//  ViewController.swift
//  TrueBullsEye
//
//  Created by Bobby Towers on 2/17/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // labels and sliders
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    // instance variables
    var _currentValue = 0
    var _targetValue = 0
    var _totalScore = 0
    var _round = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.startNewGame()
        
        // custom slider
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, forState: .Normal)
        
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, forState: .Highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        if let trackLeftImage = UIImage(named: "SliderTrackLeft") {
            let trackLeftResizable = trackLeftImage.resizableImageWithCapInsets(insets)
            slider.setMinimumTrackImage(trackLeftResizable, forState: .Normal)
        }
        
        if let trackRightImage = UIImage(named: "SliderTrackRight") {
            let trackRightResizable = trackRightImage.resizableImageWithCapInsets(insets)
            slider.setMinimumTrackImage(trackRightResizable, forState: .Normal)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startNewRound() {
        // creates new random targetValue, resets slider, and increments round
        
        _targetValue = 1 + Int(arc4random_uniform(100))
        _currentValue = 50
        slider.value = Float(_currentValue)
        _round += 1
    }
    
    func startNewGame() {
        // reset round, score and labels
        
        _round = 0
        _totalScore = 0
        self.startNewRound()
        self.updateLabels()
    }
    
    func updateLabels() {
        // refreshes the labels with current values
        
        targetLabel.text = String(_targetValue)
        scoreLabel.text = String(_totalScore)
        roundLabel.text = "\(_round)"
    }
    
    @IBAction func showAlert() {
        // Hit Me! button action
        
        // points variables
        let difference = abs(_currentValue - _targetValue)
        var points = 10 - difference
        var bonusPoints = 0
        
        // title conditionals for pop up alert
        var title: String
        if difference == 0 {
            title = "Perfect Bull's Eye! BONUS!"
            bonusPoints = 10
        } else if difference < 3 {
            title = "Almost perfect"
            if difference == 1 {
                bonusPoints = 6
            }
        } else if difference <= 5 {
            title = "Pretty good"
        } else if difference <= 10 {
            title = "Decent try"
        } else {
            title = "Not even close..."
        }
        _totalScore += points + bonusPoints
        
        // message variable, change message if bonus points are given
        var message = "You scored \(points) points" + "\nSlider value = \(_currentValue)" + "\nTarget value = \(_targetValue)"
        
        if bonusPoints != 0 {
            message = "You scored \(points) points and \(bonusPoints) bonus points!" + "\nTotal points = \(points + bonusPoints)" + "\nSlider value = \(_currentValue)" + "\nTarget value = \(_targetValue)"
        }
        
        // alert created with added action, present alert view controller
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: { action in
            
            // new round and refresh labels AFTER "OK" button is hit
            self.startNewRound()
            self.updateLabels()
        })
        
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        
        _currentValue = lroundf(slider.value)
        
        // testing purposes
        //println("The value of the slider is now: \(slider.value) \n\(currentValue)")
    }
    
    @IBAction func restartButton(sender: UIButton) {
        startNewGame()
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
