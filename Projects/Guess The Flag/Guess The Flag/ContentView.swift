//
//  ContentView.swift
//  Guess The Flag
//
//  Created by College on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
            }
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            
            Button("Edit", systemImage: "pencil") {
                print("Edit button was tapped")
            }
            
            
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            
            Button {
                print("Custom image button tapped")
            } label: {
                Image("UK")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding()
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    ContentView()
}
