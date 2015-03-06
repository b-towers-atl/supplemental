//
//  ViewController.swift
//  12ControllingTheKeyboard
//
//  Created by Bobby Towers on 1/31/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var enterTextField: UITextField!
    
    @IBAction func enterButton(sender: AnyObject) {
        
        enterLabel.text = enterTextField.text
        
    }
    
    @IBOutlet weak var enterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        // self refers to VC, enterTextField is a property of VC, and the text field's delegate responds to editing-related messages from the text field
        self.enterTextField.delegate = self // the right hand side self (the VC) is assigned to be the delegate
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        // this function touchesBegan runs when you tap
        // so when the user taps away from/outside of the keyboard, the keyboard will close down
        
        
        // self refers to the ViewController, and view refers to the view within the VC, and endEditing sets keyboard away
        self.view.endEditing(true)
        
    }
    
    // function that is run when the return button is pressed
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // returns a bool
        
        textField.resignFirstResponder()
        
        return true
        
    }


}

