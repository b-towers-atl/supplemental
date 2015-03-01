//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Bobby Towers on 3/1/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}