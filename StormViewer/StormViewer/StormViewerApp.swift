//
//  StormViewerApp.swift
//  StormViewer
//
//  Created by Daniel Pointecker on 10.12.22.
//

import SwiftUI

@main
struct StormViewerApp: App {
    var body: some Scene {
        Window ("Strom Viewer", id: "main") {
            ContentView()
                .onAppear{
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
        .commands {
          CommandGroup(replacing: .newItem) { }
          CommandGroup(replacing: .undoRedo) { }
          CommandGroup(replacing: .pasteboard) { }
        }
    }
}
