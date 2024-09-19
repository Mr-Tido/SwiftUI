//
//  ContentView.swift
//  DataBase_API
//
//  Created by user on 18.09.2024.
//

import SwiftUI

struct AuthViwe: View{
    @State var email = ""
    @State var isLading = false
    @State var result: Result<Void, Error>?
    
    var body: some View{
        Form{
            Section{
                TextField("Email", text:$email)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
            }
        }
    }
}

