//
//  Mapita.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit
import MapKit

class Mapita: UIViewController,MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet var MiMapita:MKMapView?
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()

        MiMapita?.delegate = self
        MiMapita?.showsPointsOfInterest = true
        MiMapita?.showsUserLocation = true
        
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            
        }
        // Do any additional setup after loading the view.
    }
    
    func locationManager(_manager: CLLocationManager, didUpdateLocations locations:[CLLocation]){
        
        let location = locations.first!
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 500, 500)
        MiMapita?.setRegion(coordinateRegion, animated: true)
        locationManager.stopUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
