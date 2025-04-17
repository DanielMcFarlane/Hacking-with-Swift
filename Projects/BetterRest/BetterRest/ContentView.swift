//
//  ContentView.swift
//  BetterRest
//
//  Created by Daniel McFarlane on 17/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
    }
    
    func exampleDates() {
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)

        // create a range from those two
        let range = Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}


// Use this if you want to hide text so that screen readers still pick it up
//DatePicker("Please enter a date", selection: $wakeUp)
//    .labelsHidden()
