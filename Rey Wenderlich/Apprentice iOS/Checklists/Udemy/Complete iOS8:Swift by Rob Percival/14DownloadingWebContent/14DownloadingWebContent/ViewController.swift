//
//  ViewController.swift
//  14DownloadingWebContent
//
//  Created by Bobby Towers on 2/2/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "https://www.stackoverflow.com")
        
        // NSURLSession is like a mini web browser inside the application
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            
            // if there is no error
            if error == nil {
                
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
                
                println(urlContent)
        
                // async code is run on a different schedule than the main body of the code
                dispatch_async(dispatch_get_main_queue()) {
                    
                    self.webView.loadHTMLString(urlContent!, baseURL: nil)
                    
                }
                
                // need to get out of the closure and reference the VC's webview, use self
//                self.webView.loadHTMLString(urlContent!, baseURL: nil)
                
            }
            
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

