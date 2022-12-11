//
//  ContentView.swift
//  CowsAndBulls
//
//  Created by Daniel Pointecker on 11.12.22.
//

import SwiftUI

struct ContentView: View {
    func submitGuess() {
        print("Hello")
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter a guess...", text: .constant("1234"))
                Button("Go", action: submitGuess)
            }
        }
        .frame(width: 250)
        .frame(minHeight: 300)
        .padding(16)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
