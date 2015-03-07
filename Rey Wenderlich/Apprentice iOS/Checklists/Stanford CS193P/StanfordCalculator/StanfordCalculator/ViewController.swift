//
//  ViewController.swift
//  StanfordCalculator
//
//  Created by Bobby Towers on 2/8/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

/*
Lecture 2

MVC - Model - View - Controller

Model - what your application is (but not how it is displayed)
For the calculator, it calculates (performOperation, etc)
stuff in the model is completely independent of how the UI works

Controller - controls how your model is presented to the user (UI logic)
stuff in the controller is very specific to how the UI works

View - controller's minions, building blocks
stuff in the view is very generic UI elements



How to communicate between the 3 camps

Controllers can talk directly to their model
Controller has to know EVERYTHING about the model and use its public API

Controller similarly has unlimited communication to the View
"outlet" is a property of the Controller that points to the View

Model to View NEVER communicate because the Model is UI independent
Both need a Controller to interpret each other



Can the View talk back to the Controller? Kind of 
They can, but the View objects are generic and must communicate in a blind and structured fashion

One way is to use Target Action, in which the Controller sets a Target upon itself
Then the Controller hands out an Action to the View
The View then sends the Controller that Action when things happen in the UI
For example, a button or a slider being pressed/moved

A second, more complicated way is to use Delegates
This is used when the View needs to synchronize with the Controller
"will" "should" "did"
The Controller sets itself as the View's delegates
For example, a scroll view lets the Controller know the user "did" scroll
Or the user "will" be scrolling when the user is about to put down a touch
Or the user puts down a touch and the scroll view wants to know if it "should" allow it 



A delegate is set via a protocol (i.e. it is "blind" to class)

Views do NOT own the data they display
in other words, the data should not be a property of the Views

For example the songs in an iPod are NOT owned by the List View
Those 10,000 songs are not 10,000 instance variables to the List View
But instead, belong to the Model

Some Controller has to access that database and tell the view how to display



So again, Views do NOT own the data
Instead, if needed, they have a protocol to acquire the data

Data Sources are a special kind of delegate
Controllers are almost ALWAYS that Data Source (NOT the Model!)
Data Source will ask things such as count or data at
"how many songs are there?" or "display the data at row 150 and next 10 items"




The Controller's job is to interpret and format the Model's data for the Views



Can the Model talk to the Controller? No
The Model is (or at least should be) UI independent

So what if the Model has information to update or something? Maybe the data base changes or the Model is based on a network and it changes?

The Model uses a "radio station"-like broadcasting mechanism through 
1. Notification
2. KVO (Key Value Observing)

The Controller (or even in some cases Models) can "tune in" to the radio station and listen in on the interesting stuff

When it finds out something changes, the Controller communicates via its green arrow to the Model



Now use MVC to make complicated programs... simply combine MULTPLE MVCs together

Listen to last 5 minutes of Lecture 2 for the complex MVC combinations
such as a Calendar app with Year, Month, Week, Day


*/

import UIKit

class ViewController: UIViewController {
    // outlet is an instance variable
    // action is a method
    
    
    // UILabel! is an implicityly unwrapped optional
    // optionals are automatically given = to nil
    // this does get initialized, but it is just being done automatically for you
    @IBOutlet weak var displayLabel: UILabel!
    
    
    // this line causes an error "Class 'ViewController' has no initializers"
    // this is because all properties need to be initialized
    // they have to have a value
    // two ways, give it an initializer, or just assign it a value
    var userInTheMiddleOfTypingNumber = false

    @IBAction func appendDigit(sender: UIButton) {
        
        // because digit has no type, it will print out an optional
        // Swift is very strongly typed
        // Swift, however, is very good at type inference, it can infer what the type is in the context
        // Optionals are a type, and if you option click digit, it with show String?
        // you can think of ? as the type, and String as one part of the potential value (the other being nil) in the box
        // it's not a string that can be nil, it's an optional that can be a string
        
        
        let digit = sender.currentTitle!
        println("digit = \(digit)")
        
        
        // this line could be done without error
        // since displayLabel.text is an optional
//        displayLabel.text = nil
        
        // this line of code causes an error
        // the 2nd displayLabel.text is also an optional
        // you can't add a string to an optional
        // you can only append strings to other strings
//        displayLabel.text = displayLabel.text + digit
        
        // we unwrap the optional, so it is now a string and a string
//        displayLabel.text = displayLabel.text! + digit
        
        
        // if var is equiv to if var == true
        if userInTheMiddleOfTypingNumber {
            
            displayLabel.text = displayLabel.text! + digit
            
        } else {
            
            displayLabel.text = digit
            userInTheMiddleOfTypingNumber = true
            
        }
        
    }
    
    
    @IBAction func operateButton(sender: UIButton) {
        
        let operation = sender.currentTitle!
        
        if userInTheMiddleOfTypingNumber {
            enterButton()
        }
        
        // notice the difference between closures
        // no need to specify types in arguments and return because Swift knows you are calling performOperation
        // also notice how each closure is shortened for readability
        // $0 $1 $2 $3 etc are Swift's names for unnamed arguments
        // instead of naming arguments, you can just use $0, $1... etc
        // one last cool thing, if the function is the last argument, you can actually put it to the outside of the parentheses:
        // performOperation(other arguments) { $0 * $1 }
        // or more concisely: performOperation() { $0 * $1 }
        // and even MORE concisely, if there is no other arguments:
        // performOperation { $0 * $1 }
        switch operation {
        case "×": performOperation({ (op1: Double, op2: Double) -> Double in
            return op1 * op2
            })
        case "÷": performOperation({ (op1, op2) in
            return op2 / op1
            })
        case "+": performOperation({ (op1, op2) in op1 + op2 })
        case "−": performOperation({ $1 - $0 })
        case "√": performOperation { sqrt($0) }
        default: break
        }
        
    }
    
    // (Double, Double) -> Double is a type like double, int, or string (it is function type)
    // this function takes in two doubles and returns a single double
    func performOperation(operation: (Double, Double) -> Double) {
        
        if operandStack.count >= 2 {
            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
            enterButton()
        }
        
    }
    
    func performOperation(operation: Double -> Double) {
        
        if operandStack.count >= 2 {
            displayValue = operation(operandStack.removeLast())
            enterButton()
        }
        
    }
    
    // explicit type definition is bad form if it can be inferred implicitly
    // use () to initialize and create an instance of a class/data type
    var operandStack = Array<Double>()
    
    @IBAction func enterButton() {
        
        userInTheMiddleOfTypingNumber = false
        operandStack.append(displayValue)
        println("operand stack = \(operandStack)")
        
    }

    // example of computed properties
    var displayValue: Double {
        
        get {
            // extra credit
            return NSNumberFormatter().numberFromString(displayLabel.text!)!.doubleValue
        }
        set {
            displayLabel.text = "\(newValue)"
            userInTheMiddleOfTypingNumber = false
        }
        
    }
    
}

