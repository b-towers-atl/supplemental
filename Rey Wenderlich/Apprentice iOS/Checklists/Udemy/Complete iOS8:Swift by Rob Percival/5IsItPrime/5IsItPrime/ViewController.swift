//
//  ViewController.swift
//  5IsItPrime
//
//  Created by Bobby Towers on 1/26/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var numberField: UITextField!
    
    @IBAction func isPrimeButton(sender: AnyObject) {
        
        var number = numberField.text.toInt()
        var unwrappedNumber = number!
        var isPrime = true
        
        if number != nil {
            
            if unwrappedNumber == 1 || unwrappedNumber == 0 {
                
                isPrime = false
                
            }
            
            if unwrappedNumber != 2 && unwrappedNumber != 1 {
                
                for var i = 2; i < unwrappedNumber; i++ {
                    
                    if unwrappedNumber % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                }
                
            }
            
            if isPrime == false {
                
                resultLabel.text = "\(unwrappedNumber) is not prime"
                
            } else {
                
                resultLabel.text = "\(unwrappedNumber) is a prime"
                
            }

            
        } else {
            
            resultLabel.text = "Invalid entry"
            
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

