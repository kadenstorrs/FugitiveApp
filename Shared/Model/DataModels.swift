//
//  DataModels.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/15/21.
//

import Foundation
import MapKit

struct FugitiveDataModel: Identifiable {
    var id = UUID()
    var users: [User]
    var gameCode: String
}

struct User {
    var username: String
    var email: String
    var imageURl: String?
    var currentGameCode: String?
    var currentLocation: CLLocationCoordinate2D?
    var isVisible: Bool?
    var isCop: Bool?
}
