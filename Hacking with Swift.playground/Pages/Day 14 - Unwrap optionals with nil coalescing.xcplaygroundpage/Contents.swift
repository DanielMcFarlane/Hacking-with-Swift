import Cocoa

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new1 = captains["Serenity"] ?? "N/A" // Return serinity or N/A using ??

let new2 = captains["BillyBob", default: "N/A"] // Can just set a defualt instead


// randomElement() method on arrays returns one random item from the array, might be empty so returns an optional
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


// Example
struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)


// You create an integer from a string, where you actually get back an optional Int? because the conversion might have failed
let input = ""
let number = Int(input) ?? 0
print(number)
