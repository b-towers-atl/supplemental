//
//  ViewController.swift
//  8TableViews
//
//  Created by Bobby Towers on 1/30/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

// UITableViewDelegate makes the UIViewController responsible for the Table View that we added to it
class ViewController: UIViewController, UITableViewDelegate {
    
    var cellContent = ["Rob", "Kirsten", "Tommy", "Ralphie"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // This function allows us to return an integer which is the number of rows
        
        return cellContent.count
        
    }
    
    // indexPath variable tells you what row you are on at any given time
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // This method defines the contents of each individual cell, allows us to display whatever content we want (text/picture/etc), as well as the look of the cell
        // Returns a UITableViewCell as well as all the content we want to ship out with it
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

