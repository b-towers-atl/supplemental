//
//  ViewController.swift
//  GuessGuantlet
//
//  Created by Bobby Towers on 2/5/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

/*
The point of this game is to simply practice with buttons/fields and some logic

The goal of the game is to get past each layer by guessing the number.

Each layer gets more difficult, and if you fail after a certain number of guesses, you have to restart
*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLayerLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var firstGuessButton: UIButton!
    
    @IBOutlet weak var secondLayerLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var secondGuessButton: UIButton!

    @IBOutlet weak var thirdLayerLabel: UILabel!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var thirdGuessButton: UIButton!
    
    // text fields use number pad
    
    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var hintLabel: UILabel!
    
    var firstRandomNumber: Int = Int(arc4random_uniform(5) + 1)
    var secondRandomNumber: Int = Int(arc4random_uniform(10) + 1)
    var thirdRandomNumber: Int = Int(arc4random_uniform(20) + 1)
    
    @IBOutlet weak var userLivesLabel: UILabel!
    @IBOutlet weak var userLivesCountLabel: UILabel!
    var userLives: Int = 5
    
    @IBAction func firstGuessButton(sender: AnyObject) {
        
        userGuessesFirst(5)
        
    }

    @IBAction func secondGuessButton(sender: AnyObject) {
        
        userGuessesSecond(10)
        
    }

    @IBAction func thirdGuessButton(sender: AnyObject) {
        
        userGuessesThird(20)
        
    }
    
    @IBOutlet weak var restartButton: UIButton!
    @IBAction func restartButton(sender: AnyObject) {
        
        restartGame()
        
    }
    
    func restartGame() {
        
        firstRandomNumber = Int(arc4random_uniform(5) + 1)
        secondRandomNumber = Int(arc4random_uniform(10) + 1)
        thirdRandomNumber = Int(arc4random_uniform(20) + 1)
        
        firstTextField.text = ""
        secondTextField.text = ""
        thirdTextField.text = ""
        
        responseLabel.text = ""
        userLives = 5
        userLivesCountLabel.text = "\(userLives)"
        
        hintLabel.text = "\(firstRandomNumber) \(secondRandomNumber) \(thirdRandomNumber)"
        
        showFirst()
        hideSecond()
        hideThird()
        
        restartButton.hidden = true
        
    }
    
    func userGuesses(max: Int, textField: UITextField) {
        
        var userGuess: Int? = 0
        
        if firstTextField.text.toInt() != nil {
            
            userGuess = firstTextField.text.toInt()
            
            if userLives > 0 {
                
                if userGuess <= 0 || userGuess > max {
                    
                    responseLabel.text = "Sorry, please enter a valid entry."
                    
                } else if userGuess == firstRandomNumber {
                    
                    correctAnswer()
                    
                    hideFirst()
                    showSecond()
                    hideThird()
                    
                } else {
                    
                    incorrectGuess()
                    
                }
                
            } else if userLivesLabel.text?.toInt() == 0 {
                
                responseLabel.text = "Dead."
                restartButton.hidden = false
                hideAll()
            }
            
        } else {
            
            responseLabel.text = "Please enter a number."
            
        }
        
    }
    
    func userGuessesFirst(max: Int) {
        
        var userGuess: Int? = 0
        
        if firstTextField.text.toInt() != nil {
            
            userGuess = firstTextField.text.toInt()
            
            if userLives > 0 {
                
                if userGuess <= 0 || userGuess > max {
                    
                    responseLabel.text = "Sorry, please enter a valid entry."
                    
                } else if userGuess == firstRandomNumber {
                    
                    correctAnswer()
                    
                    hideFirst()
                    showSecond()
                    hideThird()
                    
                } else {
                    
                    incorrectGuess()
                    
                }
                
            } else if userLivesLabel.text?.toInt() == 0 {
                
                responseLabel.text = "Dead."
                restartButton.hidden = false
                hideAll()
            }
            
        } else {
            
            responseLabel.text = "Please enter a number."
            
        }
        
    }
    
    func userGuessesSecond(max: Int) {
        
        var userGuess: Int? = 0
        
        if secondTextField.text.toInt() != nil {
            
            userGuess = secondTextField.text.toInt()
            
            if userLives > 0 {
                
                if userGuess <= 0 || userGuess > max {
                    
                    responseLabel.text = "Sorry, please enter a valid entry."
                    
                } else if userGuess == secondRandomNumber {
                    
                    correctAnswer()
                    
                    hideFirst()
                    hideSecond()
                    showThird()
                    
                } else {
                    
                    incorrectGuess()
                    
                }
                
            } else if userLivesLabel.text?.toInt() == 0 {
                
                responseLabel.text = "Dead."
                restartButton.hidden = false
                hideAll()
            }
            
        } else {
            
            responseLabel.text = "Please enter a number."
            
        }
        
    }
    
    func userGuessesThird(max: Int) {
        
        var userGuess: Int? = 0
        
        if thirdTextField.text.toInt() != nil {
            
            userGuess = thirdTextField.text.toInt()
            
            if userLives > 0 {
                
                if userGuess <= 0 || userGuess > max {
                    
                    responseLabel.text = "Sorry, please enter a valid entry."
                    
                } else if userGuess == thirdRandomNumber {
                    
                    userLivesCountLabel.text = "!!!"
                    responseLabel.text = "Congratulations! You win."
                    hideAll()
                    restartButton.hidden = false
                    
                } else {
                    
                    incorrectGuess()
                    
                }
                
            } else if userLivesLabel.text?.toInt() == 0 {
                
               dead()
                
            }
            
        } else {
            
            responseLabel.text = "Please enter a number."
            
        }
        
    }
    
    func correctAnswer() {
        
        responseLabel.text = "Correct. +2 Life"
        userLives += 2
        userLivesCountLabel.text = "\(userLives)"
        
    }
    
    func incorrectGuess() {
        
        responseLabel.text = "Incorrect guess. -1 Life"
        --userLives
        userLivesCountLabel.text = "\(userLives)"
        
    }
    
    func dead() {
        
        responseLabel.text = "Dead."
        restartButton.hidden = false
        hideAll()
        
    }
    
    func hideFirst() {
        
        firstLayerLabel.hidden = true
        firstTextField.hidden = true
        firstGuessButton.hidden = true
        
    }
    
    func hideSecond() {
        
        secondLayerLabel.hidden = true
        secondTextField.hidden = true
        secondGuessButton.hidden = true
        
    }
    
    func hideThird() {
        
        thirdLayerLabel.hidden = true
        thirdTextField.hidden = true
        thirdGuessButton.hidden = true
        
    }
    
    func hideAll() {
        
        hideFirst()
        hideSecond()
        hideThird()
        
    }
    
    func showFirst() {
        
        firstLayerLabel.hidden = false
        firstTextField.hidden = false
        firstGuessButton.hidden = false
        
    }
    
    func showSecond() {
        
        secondLayerLabel.hidden = false
        secondTextField.hidden = false
        secondGuessButton.hidden = false
        
    }
    
    func showThird() {
        
        thirdLayerLabel.hidden = false
        thirdTextField.hidden = false
        thirdGuessButton.hidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showFirst()
        hideSecond()
        hideThird()
        
        hintLabel.text = "\(firstRandomNumber) \(secondRandomNumber) \(thirdRandomNumber)"
        restartButton.hidden = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

