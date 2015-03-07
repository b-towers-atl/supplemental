//
//  ViewController.swift
//  10PermanentStorage
//
//  Created by Bobby Towers on 1/31/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        // this is specific data for that user, such as setting the default name, or default user id, or any data that we would like
        // forKey is pretty much the variable name, and the value is the associated value for the key
        // this creates an object called "name" in NSUserDefaults, and it will have the value "Bobby"
//        NSUserDefaults.standardUserDefaults().setObject("Bobby", forKey: "name")
        
        // this line here, retrieves the data, while the line above, sets the data
//        println(NSUserDefaults.standardUserDefaults().objectForKey("name"))
        
        
        // this prints out an optional, Optional(Bobby)
        // we don't know for certain whether or not objectForKey("name") exists
        
        
        // we fix this by unwrapping it with a !
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name")!
        println(name)
        // now it prints out just Bobby
        
        
        // but now we have a yellow warning saying "Variable 'name' inferred to have type 'AnyObject', which may be unexpected"
        // var name is actually an object, and more specifically, var name: AnyObject 
        
        
        // if we plan to use it, we need to cast it, telling it what the AnyObject actually is
        var nameCasted = NSUserDefaults.standardUserDefaults().objectForKey("name")! as String
        
        
        println(nameCasted)
        
        
        
        
        
        
        // applying what we learned and doing it again
        
        // set the defaults and then comment it out
//        NSUserDefaults.standardUserDefaults().setObject(23, forKey: "number")
        
        
        var myNumber = NSUserDefaults.standardUserDefaults().objectForKey("number")! as Int
        
        println(myNumber)
        
        
        
        // then comment this out because it is now permanently stored
//        NSUserDefaults.standardUserDefaults().setObject(["pie", "almonds", "apples"], forKey: "foodArray")
        
        var myArray = NSUserDefaults.standardUserDefaults().objectForKey("foodArray")! as NSArray
        
        println(myArray[1])
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

