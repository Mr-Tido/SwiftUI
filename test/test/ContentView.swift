//
//  ContentView.swift
//  Test
//
//  Created by user on 20.09.2024.
//

import SwiftUI


struct ContentView: View {
    @State private var showLogin = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        
       
        Button("Login"){
            showLogin.toggle()
        }
        .accessibilityIdentifier("loginButton")
  
        }
        .sheet(isPresented: $showLogin){
            LoginView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
