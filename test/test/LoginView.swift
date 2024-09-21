//
//  LoginView.swift
//  Test
//
//  Created by user on 20.09.2024.
//

import Foundation
import SwiftUI


struct LoginView: View{
    @EnvironmentObject private var user: User
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        NavigationView{
            Form{
                Section{
                    TextField("Username",text: $user.username)
                    SecureField("Password", text:$user.password)
                }
                Button {
                    if user.login(){
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    Text("login")
                }
                .accessibilityIdentifier("loginNow")
            }
            .navigationTitle(Text("Login"))
            .navigationBarItems(trailing: Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle")
                    .accessibilityLabel("Dismiss")
            })
        }
    }
}
