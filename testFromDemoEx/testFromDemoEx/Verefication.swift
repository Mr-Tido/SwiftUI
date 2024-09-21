//
//  ContentView.swift
//  testFromDemoEx
//
//  Created by user on 20.09.2024.
//

import SwiftUI

struct Verefication: View {
    @State var veref = ""
    
    var body: some View {
        VStack{
            Text ("OTP Verification")
                .font(.system(size: 24))
                .padding(.trailing,180)
            
            Text("Enter the 6 digit numbers sent to your email")
                .foregroundColor(.gray)
                .font(.system(size:14))
                .multilineTextAlignment(.leading)
                .padding(.trailing,60)
                .padding(.top,1)
                .padding(.bottom)
        }
        .padding(.bottom,20)
        
        HStack{
            
            TextField(text:$veref){
                
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 35,height: 10)
            Spacer()
            TextField(text:$veref){
                
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 35,height: 10)
            Spacer()
            TextField(text:$veref){
                
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 35,height: 10)
            Spacer()
            TextField(text:$veref){
                
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 35,height: 10)
            Spacer()
            TextField(text:$veref){
                
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 35,height: 10)
            Spacer()
            TextField(text:$veref){
                
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 35,height: 10)
            
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
    
        .frame(width: 392,height: 44)
        Text("If you didn't receive code, resend after 1:00")
            .padding(.top,5)
            .padding(.bottom,40)
            .foregroundColor(.gray)
            .font(.system(size: 13))
        
        
        
        
        Button("Set New Password"){
            
        }
        .frame(width: 342,height: 46)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(5.0)
        
    }
    
}

#Preview {
    Verefication()
}

