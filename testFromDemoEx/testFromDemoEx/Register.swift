//
//  ContentView.swift
//  testFromDemoEx
//
//  Created by user on 20.09.2024.
//

import SwiftUI

struct Register: View {
    @State var name: String = ""
    @State var phoneNumber:String = ""
    @State var mail:String = ""
    @State var Pass:String = ""
    @State var ConPas:String = ""
    @State private var checkBox: Bool = false
    @State var isNavigate: Bool = false
    
    var body: some View {
        VStack{
            Text ("Create an acount")
                .font(.system(size: 24))
                .padding(.trailing,170)
            
            Text("complete the sign up process to get started")
                .foregroundColor(.gray)
                .font(.system(size:14))
                .multilineTextAlignment(.leading)
                .padding(.trailing,60)
                .padding(.bottom)
        }
        
        
        Text("Full name")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,280)
        HStack{
            TextField("Ivanov Ivan", text:$name){
                
            }
            
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 392,height: 44)
        
        Text ("Phone Nuber")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,260)
        
        HStack{
            TextField("+7(999)999-99-99", text:$phoneNumber){
                
            }
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 392,height: 44)
        
        Text ("Email Address")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,250)
        HStack{
            TextField("**********@mail.com", text:$mail){
                
            }
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 392,height: 44)
        
        
        Text("Password")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,280)
        
 ZStack{
            SecureField("**********", text:$Pass){
                
            }
                Image(systemName: "eye.slash")
         .padding(.leading,290)
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 392,height: 44)
        
    
        Text("Confirm Password")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,220)
        
        
        ZStack{
            SecureField("**********", text:$ConPas){
                
            }
            Image(systemName: "eye.slash")
     .padding(.leading,290)
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 392,height: 44)
        
      
        
        HStack(alignment: .top, spacing: 25) {
            CheckBox(value: $checkBox)
                .padding(.top,30)
            
            NavigationLink {
            }
        label: {
            VStack{
                Text("By thcking this box,you agree to oru Terms and")
                Text("conditional and private policy")
            }
            .font(.system(size: 13))
            .multilineTextAlignment(.center)
            .padding(.top,28)
        }
        }
        
        
        
        Button("Sign Up"){
       
        }
        .frame(width: 342,height: 46)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(5.0)
     
        
        
        
        HStack{
Text("Already heave an account?")
                .foregroundColor(.gray)
            NavigationLink {
                LogIn()
            } label: {
                Text("Sign In")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            
            NavigationLink(
                destination: LogIn(),
                isActive: $isNavigate,
                label: {
                    EmptyView()
                })
        }
        
        Text("or sign in using")
            .foregroundColor(.gray)
        Image("Vector")
    }
    
}

#Preview {
    Register()
}
