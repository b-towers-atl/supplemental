//
//  ViewController.swift
//  20WhereAmI
//
//  Created by Bobby Towers on 3/16/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var altitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        var userLocation = locations[0] as CLLocation
        
        latitudeLabel.text = "\(userLocation.coordinate.latitude)"
        longitudeLabel.text = "\(userLocation.coordinate.longitude)"
        headingLabel.text = "\(userLocation.course)"    // heading and course are different
        speedLabel.text = "\(userLocation.speed)"
        altitudeLabel.text = "\(userLocation.altitude)"
        
        println(userLocation)
        
        CLGeocoder().reverseGeocodeLocation(userLocation, completionHandler:
            {(placemarks, error) in
                
                if (error != nil) {
                    println("Error: \(error)")
                } else {
                    
//                    println(placemarks)
                    
                    let placemark = CLPlacemark(placemark: placemarks?[0] as CLPlacemark)
                    
                    
                    var subThoroughfare: String
                    
                    if placemark.subThoroughfare != nil {
                        subThoroughfare = placemark.subThoroughfare
                    } else {
                        subThoroughfare = ""
                    }
                    
                    
                    self.addressLabel.text = "\(subThoroughfare) \(placemark.thoroughfare) \n \(placemark.subLocality) \n \(placemark.subAdministrativeArea) \n \(placemark.postalCode) \n \(placemark.country)"
                }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

