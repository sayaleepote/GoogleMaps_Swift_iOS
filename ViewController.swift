//
//  ViewController.swift
//  GoogleMaps_Swift_iOS
//
//  Created by Sayalee on 5/23/18.
//  Copyright © 2018 Assignment. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    var location: Location?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func loadView() {
        guard let title = location?.title, let latitude = location?.lat, let longitude = location?.long else {
            return
        }
        
        let camera = GMSCameraPosition.camera(withLatitude: Double(latitude)!, longitude: Double(longitude)!, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Create a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: Double(latitude)!, longitude: Double(longitude)!)
        marker.title = title
        marker.map = mapView
    }
    
}


