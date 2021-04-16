//
//  MainView.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/15/21.
//

import SwiftUI
import CoreLocation

struct MainView: View {
    private var locationManager = CLLocationManager()
    var body: some View {
        MapView(locationManager: locationManager)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
