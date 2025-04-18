//
//  ContentView.swift
//  WeTip
//
//  Created by Daniel McFarlane on 14/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 1
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]

    var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }

    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Input") {
                    TextField("Amount", value: $checkAmount, format: .currency(code: currencyCode))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                        .onTapGesture {
                            amountIsFocused = true
                        }
                }

                Section("Number of People") {
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(1 ..< 100, id: \.self) {
                            Text($0 == 1 ? "1 person" : "\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("How much tip do you want to leave?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                Section("Output") {
                    if numberOfPeople == 1 {
                        Text("You will pay \(totalPerPerson, format: .currency(code: currencyCode))")
                    } else {
                        Text("Each person will pay \(totalPerPerson, format: .currency(code: currencyCode))")
                    }
                }
            }
            .navigationTitle("WeTip")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
