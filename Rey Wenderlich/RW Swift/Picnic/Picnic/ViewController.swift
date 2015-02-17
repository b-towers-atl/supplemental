//
//  ViewController.swift
//  Picnic
//
//  Created by Bobby Towers on 1/27/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isBugDead = false
    
    @IBOutlet weak var topBasket: UIImageView!

    @IBOutlet weak var bottomBasket: UIImageView!
    
    @IBOutlet weak var topFabric: UIImageView!
    
    @IBOutlet weak var bottomFabric: UIImageView!
    
    @IBOutlet weak var bug: UIImageView!
    
    func moveBugLeft() {
        if isBugDead { return }
        
        UIView.animateWithDuration(1.0,
            delay: 2.0,
            options: .CurveEaseInOut | .AllowUserInteraction,
            animations: {
                self.bug.center = CGPoint(x: 75, y: 200)
            },
            completion: { finished in
                println("Bug moved left!")
                self.faceBugRight()
        })
    }
    
    func faceBugRight() {
        if isBugDead { return }
        
        UIView.animateWithDuration(1.0,
            delay: 0.0,
            options: .CurveEaseInOut | .AllowUserInteraction,
            animations: {
                self.bug.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
            },
            completion: { finished in
                println("Bug faced right!")
                self.moveBugRight()
        })
    }
    
    func moveBugRight() {
        if isBugDead { return }
        
        UIView.animateWithDuration(1.0,
            delay: 2.0,
            options: .CurveEaseInOut | .AllowUserInteraction,
            animations: {
                self.bug.center = CGPoint(x: 230, y: 250)
            },
            completion: { finished in
                println("Bug moved right!")
                self.faceBugLeft()
        })
    }
    
    func faceBugLeft() {
        if isBugDead { return }
        
        UIView.animateWithDuration(1.0,
            delay: 0.0,
            options: .CurveEaseInOut | .AllowUserInteraction,
            animations: {
                self.bug.transform = CGAffineTransformMakeRotation(0.0)
            },
            completion: { finished in
                println("Bug faced left!")
                self.moveBugLeft()
        })
    }
    
    func handleTap(gesture: UITapGestureRecognizer) {
        
        let tapLocation = gesture.locationInView(bug.superview)
        
        if bug.layer.presentationLayer().frame.contains(tapLocation) {
            println("Bug tapped!")
        } else {
            println("Bugged not tapped!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.7, delay: 1.0, options: .CurveEaseOut, animations: {
            
            var topBasketFrame = self.topBasket.frame
            topBasketFrame.origin.y -= topBasketFrame.size.height
            
            var bottomBasketFrame = self.bottomBasket.frame
            bottomBasketFrame.origin.y += bottomBasketFrame.size.height
            
            self.topBasket.frame = topBasketFrame
            self.bottomBasket.frame = bottomBasketFrame
            
            }, completion: { finished in
                println("Basket door opened!")
        })
        
        UIView.animateWithDuration(1.0, delay: 1.5, options: .CurveEaseOut, animations: {
            
            var topFabricFrame = self.topFabric.frame
            topFabricFrame.origin.y -= topFabricFrame.size.height
            
            var bottomFabricFrame = self.bottomFabric.frame
            bottomFabricFrame.origin.y += bottomFabricFrame.size.height
            
            self.topFabric.frame = topFabricFrame
            self.bottomFabric.frame = bottomFabricFrame
            
            }, completion: { finished in
                println("Picnic folds opened!")
        })

        
        moveBugLeft()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

