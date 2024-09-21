//
//  ContentView.swift
//  testFromDemoEx
//
//  Created by user on 20.09.2024.
//

import SwiftUI

struct New_Password: View {
    @State var mail:String = ""
    @State var Pass:String = ""
    @State var ConfPass:String = ""
    @State private var checkBox: Bool = false
    var body: some View {
        VStack{
            Text ("New Password")
                .font(.system(size: 24))
                .padding(.trailing,200)
                .padding(.bottom,2)
            
            Text("Enter new password")
                .foregroundColor(.gray)
                .font(.system(size:14))
                .multilineTextAlignment(.leading)
                .padding(.trailing,220)
                .padding(.bottom,50)
        }
        
     
        Text("Password")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,290)
        
        ZStack{
            TextField("**********", text:$Pass){
                
            }
            Image(systemName: "eye.slash")
                
                .padding(.leading,250)
                
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 399,height: 44)
        
      
        Text("Confirm Password")
            .foregroundColor(.gray)
            .font(.system(size:14))
            .multilineTextAlignment(.leading)
            .padding(.trailing,230)
            .padding(.top,10)
        
        ZStack{
            TextField("**********", text:$Pass){
                
            }
            .frame(width: 352,height: 44)
            Image(systemName: "eye.slash")
                
                .padding(.leading,250)
                
        }
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal,24)
        .frame(width: 342,height: 44)

    
        Button("Log in"){
            
        }
        .frame(width: 332,height: 46)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(5.0)
        .padding(.top,50)
        .padding(.bottom,150)
    }
    
}

#Preview {
    New_Password()
}
