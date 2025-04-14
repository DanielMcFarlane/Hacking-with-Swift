import Cocoa

//Booleans
let filename = "input.txt"
print(filename.hasSuffix(".txt"))

let number = 120
print(number.isMultiple(of: 7))


// Using flags
let goodDogs = true

let isMutliple = 12.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated // Flip flags


// Toggle booleans
var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)
