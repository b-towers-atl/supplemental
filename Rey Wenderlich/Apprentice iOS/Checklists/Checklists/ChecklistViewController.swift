//
//  ViewController.swift
//  Checklists
//
//  Created by Bobby Towers on 2/27/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    @IBAction func addItem() {
        
        // adding a row to the end of a table, the index for the new row is always equal to the number of items currently in that table
        let newRowIndex = items.count
        
        // create new ChecklistItem and add it to the data model
        let item = ChecklistItem()
        item.text = "I am a new row"
        item.checked = true
        items.append(item)
        
        // tell the tableView about this new row so it can add a new cell for that row
        let indexPath = NSIndexPath(forRow: newRowIndex, inSection: 0)
        let indexPaths = [indexPath]
        tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: UITableViewRowAnimation.Fade)
        
    }
    
    var items: [ChecklistItem]
    
    required init(coder aDecoder: NSCoder) {
        items = [ChecklistItem]()
        
        let row0item = ChecklistItem()
        row0item.text = "Walk the dog"
        row0item.checked = false
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "Brush my teeth"
        row1item.checked = true
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "Learn iOS development"
        row2item.checked = true
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "Soccer practice"
        row3item.checked = false
        items.append(row3item)
        
        let row4item = ChecklistItem()
        row4item.text = "Eat ice cream"
        row4item.checked = true
        items.append(row4item)
        
        let row5item = ChecklistItem()
        row5item.text = "Prepare for Hackathon"
        row5item.checked = false
        items.append(row5item)
        
        let row6item = ChecklistItem()
        row6item.text = "Listen to good music"
        row6item.checked = true
        items.append(row6item)
        
        let row7item = ChecklistItem()
        row7item.text = "Wash clothes"
        row7item.checked = true
        items.append(row7item)
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 44
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem") as UITableViewCell
        
        let item = items[indexPath.row]
        
        configureTextForCell(cell, withChecklistItem: item)
        configureCheckmarkForCell(cell, withChecklistItem: item)
        
        // Checking indexPath values for fun (scroll up and down so rows are out the view)
        println(indexPath.row)
        //println(indexPath.section)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // Only handles the checked state for the data model
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            
            let item = items[indexPath.row]
            item.toggleChecked()
            
            configureCheckmarkForCell(cell, withChecklistItem: item)
        }

        // After didSelectRow is run, deselectRow
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        // adds swipe to delete functionality automatically
        
        // remove the item from the data model
        items.removeAtIndex(indexPath.row)
        
        // delete the corresponding row from the tableView
        let indexPaths = [indexPath]
        tableView.deleteRowsAtIndexPaths(indexPaths, withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    
    func configureCheckmarkForCell(cell: UITableViewCell, withChecklistItem item: ChecklistItem) {
        // Handles the checkmark accessory on the cell (the view)
    
        if item.checked {
            cell.accessoryType = .Checkmark
        } else {
            cell.accessoryType = .None
        }
    }
    
    func configureTextForCell(cell: UITableViewCell, withChecklistItem item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as UILabel
        label.text = item.text
    }
}

