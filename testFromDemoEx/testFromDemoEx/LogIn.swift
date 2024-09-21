//
//  ContentView.swift
//  testFromDemoEx
//
//  Created by user on 20.09.2024.
//

import SwiftUI

struct LogIn: View {
    @State var mail:String = ""
    @State var Pass:String = ""
    @State private var checkBox: Bool = false
    @State var isNavigate: Bool = false
    var body: some View {
        VStack{
            Text ("Welcom Back")
                .font(.system(size: 24))
                .padding(.trailing,160)
            
            Text("Fill in your email password to continue")
                .foregroundColor(.gray)
                .font(.system(size:14))
                .multilineTextAlignment(.leading)
                .padding(.trailing,50)
                .padding(.bottom)
        }
        
        Text ("Email Address")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,200)
        HStack{
            TextField("**********@mail.com", text:$mail){
                
            }
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 342,height: 44)
        
        
        Text("Password")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,230)
        
        ZStack{
            TextField("**********", text:$Pass){
                
            }
            Image(systemName: "eye.slash")
                
                .padding(.leading,250)
                
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 342,height: 44)
        
      
        HStack(alignment: .top, spacing: 9) {
            CheckBox(value: $checkBox)
                .padding(.top,2)
            NavigationLink {
            }
        label: {
            HStack{
                Text("Remember pasword")
            }
            .font(.system(size: 15))
            .multilineTextAlignment(.center)
            
            
        }
            
            Button("Forgot Password?"){}
                .font(.system(size: 11))
                .padding(.leading,30)
                .padding(.top,5)
        }
       
        
        
        
        Button("Log in"){
            
        }
        .frame(width: 342,height: 46)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(5.0)
        .padding(.top,200)
        
        
        
        HStack{
        Text("Already heave an account?")
                .foregroundColor(.gray)
                NavigationLink{
                    Register()}label: {
                    Text("Sig in")
                    }
        }
        Text("or sign in using")
            .foregroundColor(.gray)
        Image("Vector")
        
        
        NavigationLink(
            destination: Register(),
            isActive: $isNavigate,
            label: {
                EmptyView()
            })
    }
   
}

#Preview {
    LogIn()
}
