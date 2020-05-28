//
//  HospitalMapView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/25/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    
    var name: String, latitude: Double, longitude: Double
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        
        let location = CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.subtitle = self.name
        annotation.coordinate = location
        
        view.addAnnotation(annotation)
        
    }
    
}
