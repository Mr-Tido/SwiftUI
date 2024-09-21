//
//  ContentView.swift
//  testFromDemoEx
//
//  Created by user on 20.09.2024.
//

import SwiftUI

struct ForgotPassword: View {
    @State var name: String = ""
    @State var phoneNumber:String = ""
    @State var mail:String = ""
    @State var Pass:String = ""
    @State var ConPas:String = ""
    @State private var checkBox: Bool = false
    
    var body: some View {
        VStack{
            Text ("Forgot Password")
                .font(.system(size: 24))
                .padding(.trailing,170)
            
            Text("Enter your email address")
                .foregroundColor(.gray)
                .font(.system(size:14))
                .multilineTextAlignment(.leading)
                .padding(.trailing,180)
                .padding(.bottom)
        }
        .padding(.bottom,30)
        
        
        
        Text ("Email Address")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,250)
            .padding(.bottom,35)
        HStack{
            TextField("**********@mail.com", text:$mail){
                
            }
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .padding(.bottom,80)
        .frame(width: 392,height: 44)
        
        Button("Sign Up"){
            
        }
        
        .frame(width: 322,height: 46)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(5.0)
        
        
        
        
        HStack{
            Text("Remember password? Back to")
                .foregroundColor(.gray)
            Button("Send OTP"){}
        }
        .padding(.top)
        .font(.system(size: 14))
    }
    
}

#Preview {
    ForgotPassword()
}
