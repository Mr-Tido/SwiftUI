//
//  ContentView.swift
//  TESTTT\(T_T)
//
//  Created by user on 18.09.2024.
//

import SwiftUI



struct ContentView: View {
    @State var login:String = ""
    @State var email:String = ""
    @State var Password:String = ""
    @State var Confirm:String = ""
    
    var body: some View {
        VStack{
            Text("Create an account")
                .font(.system(size:20))
                .padding(.trailing,170)
                .bold(.BooleanLiteralType(500))
            Text("Complete the sign up procrss to get started")
             
        }
        
        ZStack{

            Text("Login")
                .padding(.leading,5)
                .background(Color.white)
            TextField("Логин",text:$login)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all,10)
            Image(systemName: "person")
                .resizable()
                .frame(width: 15 ,height:15)
                .padding(.leading,300)
        }
        .frame(width:370,height:50,alignment:.leading)
        .foregroundColor(.black)
        
        ZStack{
            Text("Email")
                .padding(.leading,5)
                .background(Color.white)
            TextField("Почта",text:$email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all,10)
            Image(systemName: "mail")
                .resizable()
                .frame(width: 15 ,height:15)
                .padding(.leading,300)
        }
        .frame(width:370,height:50,alignment:.leading)
        .foregroundColor(.black)
        
        
        ZStack{
            Text("Pass")
                .background(Color.white)
                .padding(.leading,10)
            TextField("Пароль",text:$Password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all,10)
            Image(systemName:"lock")
                .resizable()
                .frame(width: 15 ,height:15)
                .padding(.leading,300)
        }
        .frame(width:370,height:50,alignment:.leading)
        .foregroundColor(.black)
        
        
        
        ZStack{
            Text("Con Pas")
                .background(Color.white)
                .padding(.leading,10)
            TextField("Пароль",text:$Confirm)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all,10)
            Image(systemName:"lock")
                .resizable()
                .frame(width: 15 ,height:15)
                .padding(.leading,300)
        }
        .frame(width:370,height:50,alignment:.leading)
        .padding(.bottom,400)
        
        HStack{
            Button("Регистрация"){
              
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius:25.0))
            
        }
    }
    
}

#Preview {
    ContentView()
}
