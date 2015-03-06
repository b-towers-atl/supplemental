//
//  ViewController.swift
//  19LearningMaps
//
//  Created by Bobby Towers on 3/5/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        ///// DISPLAY MAP REGION
        
        // World of Coca Cola coords
        var latitude: CLLocationDegrees = 33.763039
        var longitude: CLLocationDegrees = -84.392944
        
        // Deltas are the distance north/south and east/west to use for the span
        var latDelta: CLLocationDegrees = 0.01
        var longDelta: CLLocationDegrees = 0.01
        
        // Create the span (zoom in), the location coord, and the region displayed
        var span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        // Add region to mapView
        mapView.setRegion(region, animated: true)
        
        
        ///// ANNOTATIONS
        
        // Create annotation mark on the map
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "World of Coca-Cola"
        annotation.subtitle = "Atlanta, GA"
        
        // Add annotation to the map
        mapView.addAnnotation(annotation)
        
        
        ///// ADD ANNOTATION FROM 2 SECOND PRESS ON SCREEN
        
        var longPresser = UILongPressGestureRecognizer(target: self, action: "pressed:")
        longPresser.minimumPressDuration = 2.0
        mapView.addGestureRecognizer(longPresser)
    }
    
    func pressed(gestureRecognizer: UIGestureRecognizer) {
        // When someone does a long press, longPresser sends a message to the View Controller and perform this function
        // gestureRecognizer parameter is provided by UILongPressGestureRecognizer
        // touchPoint is assigned the gesture's location coordinate and newCoordinate converts it into a CLLocationCoordinate2D so we can use it for our map
        
        var touchPoint = gestureRecognizer.locationInView(self.mapView)
        
        var newCoordinate: CLLocationCoordinate2D = mapView.convertPoint(touchPoint, toCoordinateFromView: self.mapView)
        
        var newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "New Annotation"
        newAnnotation.subtitle = "Wonderful"
        
        mapView.addAnnotation(newAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

