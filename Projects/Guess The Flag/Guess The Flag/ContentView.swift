//
//  ContentView.swift
//  Guess The Flag
//
//  Created by College on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var attemptsRemaining = 3
    @State private var showingScore = false
    @State private var scoreTitle = ""

    var body: some View {
        ZStack {
            RadialGradient(
                stops: [
                    .init(color: Color(red: 0.2, green: 0.25, blue: 0.45), location: 0.0),
                    .init(color: Color(red: 0.08, green: 0.1, blue: 0.2), location: 1.0)
                ],
                center: .top,
                startRadius: 400,
                endRadius: 500
            )
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                VStack(spacing: 30) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            FlagImage(imageName: countries[number])
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                    .foregroundStyle(.secondary)
                
                Text("Attempts remaining: \(attemptsRemaining)")
                    .foregroundStyle(.white)
                    .font(.subheadline.weight(.heavy))
                    .foregroundStyle(.secondary)
                
                Spacer()
            }
            .padding()
        }
        
        .alert(scoreTitle, isPresented: $showingScore) {
            Button(attemptsRemaining > 0 ? "Continue" : "Try Again", action: askQuestion)
        } message: {
            if attemptsRemaining > 0 {
                Text("\nYou have \(attemptsRemaining) attempts remaining")
            } else {
                Text("\nYour final score was \(score)")
            }
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            askQuestion()
        } else {
            attemptsRemaining -= 1
            scoreTitle = attemptsRemaining == 0 ? "Game Over" : "Wrong"
            showingScore = true
        }
    }

    func askQuestion() {
        if attemptsRemaining == 0 {
            score = 0
            attemptsRemaining = 3
        }

        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct FlagImage: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 135)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}
