//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Bobby Towers on 3/1/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ChecklistItem: NSObject {
    // itemToEdit is nil when adding a new to-do item
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}