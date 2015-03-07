//
//  ItemDetailViewController.swift
//  Checklists
//
//  Created by Bobby Towers on 3/1/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

protocol ItemDetailViewControllerDelegate: class {
    
    func itemDetailViewControllerDidCancel(controller: ItemDetailViewController)
    func itemDetailViewController(controller: ItemDetailViewController, didFinishAddingItem item: ChecklistItem)
    func itemDetailViewController(controller: ItemDetailViewController, didFinishEditingItem item: ChecklistItem)

}

class ItemDetailViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    weak var delegate: ItemDetailViewControllerDelegate?
    
    var itemToEdit: ChecklistItem?
    
    @IBAction func cancel() {
        
        delegate?.itemDetailViewControllerDidCancel(self)
    }
    
    @IBAction func done() {
        // First checks to see if itemToEdit contains an object
        
        if let item = itemToEdit {
            
            item.text = textField.text
            
            delegate?.itemDetailViewController(self, didFinishEditingItem: item)
            
        } else {
            
            let item = ChecklistItem()
            item.text = textField.text
            item.checked = false
            
            delegate?.itemDetailViewController(self, didFinishAddingItem: item)
            
            
            
        }
    }
    
    override func viewDidLoad() {
        // Called by UIKit when VC is loaded from the storyboard but before it appears on screen
        
        super.viewDidLoad()
        tableView.rowHeight = 44
        
        if let item = itemToEdit {
            self.title = "Edit Item"
            textField.text = item.text
            doneBarButton.enabled = true
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        // viewWillAppear runs just before it appears
        // Keyboard is automatically brought up because textField is given control focus
        
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // Tells the delegate that row can't be selected
        
        return nil
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // Invoked anytime user changes text (tapping on keyboard/cut and paste)
        // Constantly checks the text and disables the Done button if textField is empty
        
        let oldText: NSString = textField.text
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        doneBarButton.enabled = (newText.length > 0)
        
        return true
    }
}
