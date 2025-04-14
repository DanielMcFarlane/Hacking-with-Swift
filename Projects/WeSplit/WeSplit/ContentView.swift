//
//  ContentView.swift
//  WeSplit
//
//  Created by College on 14/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello, world!")
                    
                }
                
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    
                }
                
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    
                }
                .navigationTitle("SwiftUI") // Adds nav title at top
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

// Use this to show the preview on the right
#Preview {
    ContentView()
}


// Comments
/*
 // We're making a content view and it's of object type view
 struct ContentView: View {
     // some means some kind of data that conforms to a view layout
     var body: some View {
         VStack {
             // globe image from apples sf symbols collection
             Image(systemName: "globe")
                 .imageScale(.large)
                 .foregroundStyle(.tint)
             // How to show uneditable text on screen
             Text("Hello, world!")
         }
         // View modifier, have it at the end to return the changes above
         .padding()
     }
 }
 
 struct ContentView: View {
     var body: some View {
         Form {
             // Section divides it up
             Section {
                 Text("Hello, world!")
                 Text("Hello, world!")
             }
             
             Section {
                 Text("Hello, world!")
                 Text("Hello, world!")
                 Text("Hello, world!")
             }
         }
     }
 }
 
 
 */
