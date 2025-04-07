import Cocoa

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It is AM" : "It is PM")


// Arrays
let names = ["Alice", "Bob", "Charlie"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


// Enums
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = (theme == .dark) ? "black" : "white"
print(background)
