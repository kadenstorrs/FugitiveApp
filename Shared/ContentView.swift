//
//  ContentView.swift
//  Shared
//
//  Created by Kaden Storrs on 4/15/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    var body: some View {
        VStack {
            MainView()
            Button(action: {
                NewGame.init(users: Helper.fetchSpamUsers(), gameCode: "123456", startLocation: CLLocationCoordinate2D(latitude: 10.000, longitude: 10.000), endLocation: CLLocationCoordinate2D(latitude: 11.000, longitude: 11.000))
            }, label: {
                Text("Create a new game")
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
