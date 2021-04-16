//
//  SignInView.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/16/21.
//

import SwiftUI
import Firebase

struct SignInView: View {
    @State var email: String
    @State var password: String
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            LoginTextViews(text: email, label: "Username", eyeLogoIsShown: false, isSelected: true, eyeLogoIsSelected: false)
            ZStack(alignment: .center, content: {
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(15.0)
                    .padding()
            })
            
            Button(action: {
                //Handle the Firebase Auth here
            }, label: {
                Text("Submit")
            })
        })
    }
    
    private func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (auth, error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("Successfully logged in user: \(auth?.user.displayName)")
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(email: "", password: "")
    }
}
