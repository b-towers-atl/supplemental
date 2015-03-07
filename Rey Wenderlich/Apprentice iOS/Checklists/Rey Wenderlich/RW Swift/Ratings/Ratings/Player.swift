//
//  Player.swift
//  Ratings
//
//  Created by Bobby Towers on 2/22/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class Player: NSObject {
    
    var name: String
    var game: String
    var rating: Int
    
    init(inputName: String, inputGame: String, inputRating: Int) {
        
        self.name = inputName
        self.game = inputGame
        self.rating = inputRating
        super.init()
        
    }
    
}
