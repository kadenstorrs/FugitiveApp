//
//  SignUpView.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/16/21.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State var name: String
    @State var email: String
    @State var password: String
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: nil, content: {
                HStack(alignment: .center, spacing: nil, content: {
                    Text("Email")
                    TextField(" ", text: $email)
                })
                HStack(alignment: .center, spacing: nil, content: {
                    Text("Name")
                    TextField(" ", text: $email)
                })
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
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(name: "Yuto", email: "yuto@gmail.com", password: "asdfyuto")
    }
}
