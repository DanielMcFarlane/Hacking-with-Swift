import Cocoa

// Function
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()


// You can skip creating functions abd assign functionality to variables
let sayHello = {
    print("Hi there!")
}

sayHello()


// Accept parameters and add closure
let sayHi = { (name: String) -> String in
    "Hello, \(name)!"
}

print(sayHi("Alice"))


// No return
var greeting: () -> Void = greetUser


// Example
func getUserData(for id: Int) -> String {
    if id == 123 {
        return "Daniel"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(123)
print(user)


// Array
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
