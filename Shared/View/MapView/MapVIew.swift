//
//  MapVIew.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/15/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var locationManager = CLLocationManager()
    
    private let zoom: Float = 15.0
    
    func makeUIView(context: Self.Context) -> MKMapView {
        let mapView = MKMapView(frame: UIScreen.main.bounds)
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
        return mapView
    }
    
    func setupManager() {
       locationManager.desiredAccuracy = kCLLocationAccuracyBest
       locationManager.requestWhenInUseAuthorization()
       locationManager.requestAlwaysAuthorization()
     }
    
    func updateUIView(_ mapView: MKMapView, context: Context) {
//        mapView.animation(.easeIn)
    }
}
