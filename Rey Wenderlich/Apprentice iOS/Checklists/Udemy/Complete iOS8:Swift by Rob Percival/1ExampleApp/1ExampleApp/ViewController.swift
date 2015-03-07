//
//  ViewController.swift
//  1ExampleApp
//
//  Created by Bobby Towers on 1/25/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!

    @IBOutlet var myButton: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        myLabel.text = "Updated text"
        
        myButton.setTitle("Tapped!", forState: UIControlState.Normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "It worked!"
        
        println("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

