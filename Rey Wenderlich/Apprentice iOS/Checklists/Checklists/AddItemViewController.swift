//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Bobby Towers on 3/1/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
    
    @IBOutlet weak var textField: UITextField!

    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        
        dismissViewControllerAnimated(true, completion: nil)
        
        println("Contents: \(textField.text)")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // tells the delegate that row can't be selected
        
        return nil
    }
}
