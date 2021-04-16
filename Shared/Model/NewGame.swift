//
//  NewGame.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/16/21.
//

import Foundation
import Firebase
import MapKit

public class NewGame: Identifiable {
    public var id = UUID()
    var users: [User]
    let gameCode: String
    let startLocation: CLLocationCoordinate2D
    let endLocation: CLLocationCoordinate2D
    
    init(users: [User], gameCode: String, startLocation: CLLocationCoordinate2D, endLocation: CLLocationCoordinate2D) {
        self.users = users
        self.gameCode = gameCode
        self.startLocation = startLocation
        self.endLocation = endLocation
        Helper.createNewGame(gameCode: gameCode, users: users, startLocation: startLocation, endLocation: endLocation)
    }
    
    private func addUsers(user: User, currentGameCode: String) {
        if user.currentGameCode == currentGameCode {
            self.users.append(user)
        } else {
            //MARK: - Handle the failed Gamecode Match
            print("Game codes dont match")
        }
    }
    
}
