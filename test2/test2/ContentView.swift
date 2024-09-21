//
//  ContentView.swift
//  test2
//
//  Created by user on 20.09.2024.
//

import SwiftUI

class CounterViewModel: ObservableObject{
    @Published var count: Int = 0
    func increment(){
        count += 1
    }
    
    func decrement(){
        count -= 1
    }
}


struct ContentView: View {
    @StateObject var viewModel = CounterViewModel()
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            Button("Increment", action: viewModel.increment)
            Button("Decrement", action: viewModel.decrement)
        }
    }
}

#Preview {
    ContentView()
}
