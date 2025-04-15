//
//  ContentView.swift
//  Guess The Flag
//
//  Created by College on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK") { }
        }

    }
}

#Preview {
    ContentView()
}



//// Read this and confirm
//Button("Show Alert") {
//    showingAlert = true
//}
//.alert("Important message", isPresented: $showingAlert) {
//    Button("OK", role: .cancel) { }
//} message: {
//    Text("Please read this.")
//}
//
//// Confirm or cancel
//.alert("Important message", isPresented: $showingAlert) {
//    Button("Delete", role: .destructive) { }
//    Button("Cancel", role: .cancel) { }
//}
//
//// Alert
//.alert("Important message", isPresented: $showingAlert) {
//    Button("OK") { }
//}
