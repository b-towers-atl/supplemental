//
//  ViewController.swift
//  18TicTacToe
//
//  Created by Bobby Towers on 3/5/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // odd turns are circles, even turns are crosses
    var turnNumber = 1
    
    var winner = 0
    
    /// 0 empty, 1 circle, 2 cross
    var gameState = [
        0, 0, 0,
        0, 0, 0,
        0, 0, 0
    ]
    
    let winConditions = [
        // horizontals
        [0, 1, 2], [3, 4, 5], [6, 7, 8],
        
        // verticals
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        
        // diagonals
        [0, 4, 8], [2, 4, 6]
    ]

    @IBOutlet weak var replayButtonOutlet: UIButton!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func replayButtonAction(sender: AnyObject) {
        // Resets turn count back to 1, winner back to 0, gameState back to 0's
        
        turnNumber = 1
        winner = 0
        gameState = [
            0, 0, 0,
            0, 0, 0,
            0, 0, 0
        ]
        
        // Hide the label and buttons
        winnerLabel.center = CGPointMake(winnerLabel.center.x - 500, winnerLabel.center.y)
        replayButtonOutlet.alpha = 0
        winnerLabel.alpha = 0
        
        // Clear board of all the image buttons
        // Some elements have tags of 0, so change them so they do not get interpreted by the loop
        for var i = 0; i < 8; i++ {
            var button: UIButton = view.viewWithTag(i) as UIButton
            button.setImage(nil, forState: .Normal)
        }
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        // Only run if the button tag is empty or if no winner has been declared
        if (gameState[sender.tag] == 0 && winner == 0) {
        
            var image: UIImage
            
            // Alternate players
            if turnNumber % 2 == 0 {
                image = UIImage(named: "cross.png")!
                gameState[sender.tag] = 2
            } else {
                image = UIImage(named: "circle.png")!
                gameState[sender.tag] = 1
            }
            
            // Checks for win conditions and changes winner to corresponding side
            for combination in winConditions {
                
                if gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] && gameState[combination[0]] != 0 {
                    
                    winner = gameState[combination[0]]
                    
                }
            }
            
            // When winner is declared
            if winner != 0 {
                
                // Update label before animation occurs
                if winner == 1 {
                    winnerLabel.text = "Circles win!"
                } else {
                    winnerLabel.text = "Crosses win!"
                }
                
                slideLabelToView()
                
            } else if turnNumber >= 9 && winner == 0 {
                // After a draw has occurred
                
                winnerLabel.text = "Draw!"
                
                slideLabelToView()
            }
            
            turnNumber++
            
            sender.setImage(image, forState: .Normal)
        }
    }
    
    func slideLabelToView() {
        // Slides the winnerLabel back from out of view into view and sets it from clear to visible
        // Then presents the replay button after an extra secon
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.winnerLabel.alpha = 1
            
            self.winnerLabel.center = CGPointMake(self.winnerLabel.center.x + 500, self.winnerLabel.center.y)
            
        })
        
        UIView.animateWithDuration(2, animations: { () -> Void in
            self.replayButtonOutlet.alpha = 1
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        winnerLabel.center = CGPointMake(winnerLabel.center.x - 500, winnerLabel.center.y)
        winnerLabel.alpha = 0
        replayButtonOutlet.alpha = 0
    }
}

