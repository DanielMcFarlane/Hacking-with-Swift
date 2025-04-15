//
//  ContentView.swift
//  Guess The Flag
//
//  Created by College on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View { // Useful for adding watermarks etc...
        ZStack (alignment: .top) {
            Text("Hello, world!")
            Text("This is inside a stack")
        }
    }
}

#Preview {
    ContentView()
}


//struct ContentView: View {
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Hello, world!")
//            Text("This is inside a stack")
//        }
//        
//        VStack(alignment: .leading) {
//            Text("Hello, world!")
//            Text("This is inside a stack")
//        }
//        
//        HStack(spacing: 20) {
//            Text("Hello, world!")
//            Text("This is inside a stack")
//        }
//        
//        VStack {
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//        }
//        
//        VStack {
//            Spacer()
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//            Spacer()
//        }
//        
//        ZStack {
//            Text("Hello, world!")
//            Text("This is inside a stack")
//        }
//    }
//}
//
