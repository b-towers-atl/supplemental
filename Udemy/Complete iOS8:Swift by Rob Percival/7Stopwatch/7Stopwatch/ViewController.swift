//
//  ViewController.swift
//  7Stopwatch
//
//  Created by Bobby Towers on 1/27/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0       // our count variable keeps track of time
    var isActive = false
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func playButton(sender: AnyObject) {
        
        if isActive { return }
        
        isActive = true
        
        // NSTimer does not store our time at all, just running tickTock() every second
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("tickTock"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        timer.invalidate()
        
        isActive = false
        
    }

    @IBAction func resetButton(sender: AnyObject) {
        
        timer.invalidate()
        
        isActive = false
        
        count = 0
        
        timerLabel.text = "\(count)"
    }
    
    func tickTock() {
        
        count++
        
        timerLabel.text = String(count)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

