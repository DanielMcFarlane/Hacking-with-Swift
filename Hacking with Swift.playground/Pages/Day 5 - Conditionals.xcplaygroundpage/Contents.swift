import Cocoa

let score = 85

if score >= 90 {
    print("A")
} else if score >= 80 {
    print("B")
} else if score >= 70 {
    print("C")
} else {
    print("D")
}


// Conditional relating to length
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


// Remove from array conditional
var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at:0)
}
print(numbers)


// Syntax example
let speed = 88
let age = 18

if speed >= 88 {
    print("Slow down")
}

if score >= 80 && age <= 18{
    print("Congrats on graduating")
} else {
    print("Keep studying")
}


let name = "Billy Bob"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

var username = "bilbob"

 // Better way to check if it's empty, "" would go through the string
if username.isEmpty {
    username = "Anonymous"
}

print("Welcome, \(username)")
