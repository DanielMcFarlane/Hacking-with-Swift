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
        NavigationStack {
            Form {
                Section {
                    Text("Input")
                    Section {
                        TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .keyboardType(.decimalPad)
                        
                        Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(2 ..< 100) {
                                Text("\($0) people")
                            }
                        }
                        .pickerStyle(.navigationLink) // Creates an overlay vs drop down
                    }
                }
                
                Section {
                    Text("Output")
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "GBP"))
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
