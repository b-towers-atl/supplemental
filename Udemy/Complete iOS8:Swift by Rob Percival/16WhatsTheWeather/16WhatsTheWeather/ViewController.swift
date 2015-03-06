//
//  ViewController.swift
//  16WhatsTheWeather
//
//  Created by Bobby Towers on 3/4/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userCityTextField: UITextField!
    
    @IBAction func findWeatherButton(sender: AnyObject) {
        
        var url = NSURL(string: "http://www.weather-forecast.com/locations/" + userCityTextField.text.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        
        if url != nil {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
                
                var urlError = false
                
                var weather = ""
                
                if error == nil {
                    
                    var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)!
                    
                    //println(urlContent)
                    
                    // Creates an array using urlContent and separates them
                    var urlContentArray = urlContent.componentsSeparatedByString("<span class=\"phrase\">")
                    
                    // needs to be > 1 for non existent cities
                    if (urlContentArray.count > 1) {
                        
                        // Starting from urlContentArray[1] (index 0 is all of the junk before our separator that we don't want), we create another array separating it again
                        
                        var weatherArray = urlContentArray[1].componentsSeparatedByString("</span>")
                        
                        // weatherArray[0] is of [AnyObject] as a result, we need to type cast it as a string. Now weather is the bit that we want
                        
                        weather = weatherArray[0] as NSString
                        
                        weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                        
                    } else {
                        urlError = true
                    }
                    
                } else {
                    urlError = true
                }
                
                dispatch_async(dispatch_get_main_queue()) {
                    if urlError {
                        self.showError()
                    } else {
                        self.resultLabel.text = weather
                    }
                }
            })
            
            task.resume()
            
        } else {
            showError()
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    func showError() {
        resultLabel.text = "Was not able to find weather for \(userCityTextField.text). Please try again."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userCityTextField.delegate = self
        
        userCityTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

