//
//  RoundButton.swift
//  GuessGuantlet
//
//  Created by Bobby Towers on 2/6/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        var button = UIButton.self
        self.layer.cornerRadius = 20
        
    }
    
/*
    
    @IBDesignable in front of class RoundButton:
    
    @IBDesignable var button = UIButton.self
    @IBDesignable self.layer.cornerRadius = 20
    
*/
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
