//
//  ContentView.swift
//  WeSplit
//
//  Created by College on 14/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                Text("Input")
                
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            
            Section {
                Text("Output")
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "GBP"))
            }
        }
    }
}

// Use this to show the preview on the right
#Preview {
    ContentView()
}
