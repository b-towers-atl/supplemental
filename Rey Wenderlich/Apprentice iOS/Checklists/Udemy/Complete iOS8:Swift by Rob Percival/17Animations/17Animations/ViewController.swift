//
//  ViewController.swift
//  17Animations
//
//  Created by Bobby Towers on 3/5/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var isRunning = true
    
    var counter = 1

    @IBOutlet weak var cheetahImageView: UIImageView!
    
    ///// STOP MOTION BY CLICKING BUTTON
//    @IBAction func updateImageButton(sender: AnyObject) {
//        runAnimation()
//    }
    
    ///// PAUSE AND RESUME BUTTON
    @IBAction func pauseAndPlayButton(sender: AnyObject) {
        
        if isRunning {
            timer.invalidate()
            isRunning = !isRunning
        } else {
            runTimer()
            isRunning = !isRunning
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        runTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "runAnimation", userInfo: nil, repeats: true)
    }

    
    ///// ANIMATION FUNCTION FOR BOTH CLICKING AND AUTO TIMER
    func runAnimation() {
        
        if counter == 8 {
            counter = 1
        } else {
            counter++
        }
        
        cheetahImageView.image = UIImage(named: "cheetah\(counter).png")
    }
    
    ///// ANIMATION USING ONE STATE TO ANOTHER WITH DURATION
/*
    override func viewDidLayoutSubviews() {
        // Called just before the view is actually displayed
        
        // Sets the image's center coord to appear to the left of the screen
//        cheetahImageView.center = CGPointMake(cheetahImageView.center.x - 400, cheetahImageView.center.y)
        
        // Fade out
//        cheetahImageView.alpha = 0
        
        // Frame gets the location and the size of the image
        cheetahImageView.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        // Called just when the view appears and the user is able to see the screen
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            // Slides the image from off screen to on screen
//            self.cheetahImageView.center = CGPointMake(self.cheetahImageView.center.x + 400, self.cheetahImageView.center.y)
            
            // Fade in
//            self.cheetahImageView.alpha = 1
            
            // Gradually bring the image in
            self.cheetahImageView.frame = CGRectMake(100, 20, 266, 126)
            
        })
    }
*/
    
    
    
}

///// OLD CODE

/*

var cheetahImageArray = [
    
    UIImage(named: "cheetah1.png"),
    UIImage(named: "cheetah2.png"),
    UIImage(named: "cheetah3.png"),
    UIImage(named: "cheetah4.png"),
    UIImage(named: "cheetah5.png"),
    UIImage(named: "cheetah6.png"),
    UIImage(named: "cheetah7.png"),
    UIImage(named: "cheetah8.png")
    
]

var indexCount = 0

@IBOutlet weak var cheetahImageView: UIImageView!

@IBAction func updateImageButton(sender: AnyObject) {
    
    switch indexCount {
    case 0:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 1:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 2:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 3:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 4:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 5:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 6:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    case 7:
        indexCount = 0
        cheetahImageView.image = cheetahImageArray[indexCount]
    default:
        indexCount++
        cheetahImageView.image = cheetahImageArray[indexCount]
    }
}
*/

