import Cocoa

// This may or may not have a value. Possibly like get in pyhton dictionaries or null coalescing
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

let peachOpposite = opposites["Peach"] // Doesn't exist


// Add a ? after a type
var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}


// Non optional vs optional
var num1 = 1000000 // Non optional
var num2 = 0 // Non optional
var num3: Int?  = nil // Optional

var str1 = "Hello" // Non optional
var str2 = "" // Non optional
var str3: String? = nil // Optional

var arr1 = [0] // Non optional
var arr2 = [Int]() // Non optional
var arr3: [Int]? = nil // Optional


// Example
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

if let number = number {
    print(square(number: number))
}
