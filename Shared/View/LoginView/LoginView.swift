//
//  LoginView.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/16/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Spacer()
                Spacer()
                
                NavigationLink(
                    destination: SignUpView(name: "Yuto", email: "yuto@gmail.com", password: "yuto1234"),
                    label: {
                        Text("Login")
                            .font(.title)
                            .foregroundColor(.blue)
                        
                    })
                    .border(Color.blue, width: 1)
                Spacer()
                
//                NavigationLink(
//                    destination: SignUpView(),
//                    label: {
//                        Text("Sign Up")
//                            .font(.title)
//                            .foregroundColor(.blue)
//                        
//                    })
//                    .border(Color.blue, width: 1)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
