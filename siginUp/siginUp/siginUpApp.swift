//
//  SignUpView.swift
//  ProfessionalProject
//
//  Created by prof on 21.03.2024.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var send = ""
    @State private var checkBox: Bool = false
    
    @State private var emailError: Bool = false
    @State private var error: Bool = false
    @State private var connectedError: Bool = false
    
    @State var isNavigate: Bool = false
    
    @State private var isProgress: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Create an account")
                    Text("Complete the sign up process to get started")

                }
                
                
   
            }
            
            
            }
            
        }
    }

