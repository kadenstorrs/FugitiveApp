//
//  LoginTextViews.swift
//  Fugitive (iOS)
//
//  Created by Kaden Storrs on 4/16/21.
//

import SwiftUI

struct LoginTextViews: View {
    @State var text: String
    @State var label: String
    @State var eyeLogoIsShown: Bool
    @State var isSelected: Bool
    @State var eyeLogoIsSelected: Bool
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    var body: some View {
        VStack {
            Text(text)
            HStack {
                TextField("Email", text: $label)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(15.0)
                    .padding()
                if eyeLogoIsShown {
                    Image(systemName: eyeLogoIsSelected ? "eye" : "eye.slash")
                        .padding()
                } else {
                    Image(systemName: "")
                        .padding()
                }
                    
            }
        }
    }
}

struct LoginTextViews_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextViews(text: "Email", label: "asdf@gmail.com", eyeLogoIsShown: true, isSelected: true, eyeLogoIsSelected: false)
    }
}
