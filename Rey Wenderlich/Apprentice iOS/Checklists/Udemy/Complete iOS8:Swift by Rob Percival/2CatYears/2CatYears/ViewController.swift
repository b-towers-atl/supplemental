//
//  ViewController.swift
//  2CatYears
//
//  Created by Bobby Towers on 1/25/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var catYearsAnswer: UILabel!
    
    @IBOutlet var enterYears: UITextField!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var enteredAge = enterYears.text.toInt()
        
        if enteredAge != nil {
        
            var catYears = enteredAge! * 7
        
//            catYearsAnswer.text = "Your cat is " + catYears.description
        
            catYearsAnswer.text = "Your cat is \(catYears) in cat years"
        } else {
            
            catYearsAnswer.text = "Sorry, please enter a whole number"
            
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

