//
//  ViewController.swift
//  MapPractice
//
//  Created by Jian Chen on 14/11/25.
//  Copyright (c) 2014年 forall.com.cn. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var myMap : MKMapView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zoomToNewYork(){
        
        var latitude:CLLocationDegrees = 40.75
        var longtitude:CLLocationDegrees = -73.99
        
        var latitudeDelta: CLLocationDegrees = 0.01
        var longtitudeDelta: CLLocationDegrees = 0.01
        
        var mapSpan:MKCoordinateSpan = MKCoordinateSpanMake(latitude, longtitude)
        
        var myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longtitude)
        
        var myRegion:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, mapSpan)
        
        myMap.setRegion(myRegion, animated: true)
        
        var empireStatePin = MKPointAnnotation()
        
        empireStatePin.title = "Empire State Building"
        empireStatePin.subtitle = "Once the tallest building"
        empireStatePin.coordinate = myLocation
        
        myMap.addAnnotation(empireStatePin)
        
    }
    @IBAction func satelliteView(){
        
        myMap.mapType = MKMapType.Satellite
        
    }
    @IBAction func normalView(){
        myMap.mapType = MKMapType.Standard
        
    }


}

