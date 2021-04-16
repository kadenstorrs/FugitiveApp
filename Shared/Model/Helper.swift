//
//  Helper.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/16/21.
//

import Foundation
import Firebase
import MapKit

class Helper {
    
    public static func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (auth, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("Successfully logged in user: \(auth?.user.displayName)")
            }
        }
    }
    
    public static func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (auth, error) in
            self.login(email: email, password: password)
        }
    }
    
    public static func createGameCode() -> String {
        let a = "BCDFGHJKLMNPQRSTVWXYZ1234567890"
        var s = ""
        for _ in 0..<6 {
            let r = Int(arc4random_uniform(UInt32(a.count)))
            s += String(a[a.index(a.startIndex, offsetBy: r)])
        }
        return s
    }
    
    public static func fetchCurrentUser() -> User? {
        guard let email = Auth.auth().currentUser?.email else {return nil}
        guard let username = Auth.auth().currentUser?.displayName else {return nil}
        guard let imageURL = Auth.auth().currentUser?.photoURL else {return nil}
        let imageURLString = "\(imageURL)"
        let user = User(username: username, email: email, imageURl: imageURLString, currentGameCode: nil, currentLocation: nil, isVisible: nil, isCop: nil)
        return user
    }
    
    public static func createNewGame(gameCode: String, users: [User], startLocation: CLLocationCoordinate2D, endLocation: CLLocationCoordinate2D) {
        Firestore.firestore().collection(gameCode).addDocument(data: ["users": users, "firstLocation": startLocation, "endLocation": endLocation]) { (error) in
            if let error = error {
                print("\(error.localizedDescription)")
            } else {
                print("successfully created game!")
            }
        }
    }
    
    public static func fetchSpamUsers() -> [User] {
        let gameCode = Helper.createGameCode()
        return [User(username: "Juan", email: "juan@gmail.com", imageURl: nil, currentGameCode: "123456", currentLocation: nil, isVisible: nil, isCop: nil),
                User(username: "wow", email: "juan2@gmail.com", imageURl: nil, currentGameCode: "123456", currentLocation: nil, isVisible: nil, isCop: nil),
                User(username: "nice", email: "juan3@gmail.com", imageURl: nil, currentGameCode: "123456", currentLocation: nil, isVisible: nil, isCop: nil)]
    }
    
}
