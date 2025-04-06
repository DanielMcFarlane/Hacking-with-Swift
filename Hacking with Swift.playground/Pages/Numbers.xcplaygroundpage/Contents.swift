import Cocoa


// Whole numbers
let score = 10
let reallyBig = 100_000_000 // You can space it out like python

let lowerScore = score - 2
let higherScore = score + 2
let doubleedScore = score * 2
let sqaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))


// Decimals
let decimalNumber = 0.1 + 0.2 // Swift uses double by default
print(decimalNumber)

let a = 1
let b = 2.0
let c = a + Int(b) // Typecasting uses caps

// CGFloat was replaced by double but can still appear, just use a double
