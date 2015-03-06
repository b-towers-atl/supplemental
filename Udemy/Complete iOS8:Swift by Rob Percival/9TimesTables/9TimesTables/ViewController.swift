//
//  ViewController.swift
//  9TimesTables
//
//  Created by Bobby Towers on 1/30/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    
    // this is a bad name, tableView, because it can be confusing
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var currentNumberLabel: UILabel!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        currentNumberLabel.text = "\(sliderValue.value)"
        
        // we have to .reloadData() to the tableView because this method updates it
        tableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returns the number of rows in the section as an int
        
        return 20
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // instantiates the cell as UITableViewCell, gives it a default style, and gives it an identifier
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        
        
        
        // sliderValue contains multiple values in it (such as the slider memory address, frame, etc), so we need to access its value property
        let timesTable = Int(sliderValue.value * 20)
        
        
        
        // add +1 to indexPath.row so we do not start off with 0 as the first entry in the tableView
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        
        
        // returns the UITableViewCell instance to the caller
        return cell
        
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

