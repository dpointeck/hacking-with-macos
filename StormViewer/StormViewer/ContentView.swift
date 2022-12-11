//
//  ContentView.swift
//  StormViewer
//
//  Created by Daniel Pointecker on 10.12.22.
//

import SwiftUI

struct Person {
    var name: String;
    var age: Int;
}

struct ContentView: View {
    @State private var selectedImage: Int?
    
    var body: some View {
        NavigationSplitView {
          List(0..<10, selection: $selectedImage) { number in
            Text("Storm \(number + 1)")
          }
          .frame(width: 150)
        } detail: {
          if let selectedImage = selectedImage {
            Image(String(selectedImage))
              .resizable()
              .scaledToFit()
          } else {
            Text("Please select an image")
              .frame(maxWidth: .infinity, maxHeight: .infinity)
        } }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
