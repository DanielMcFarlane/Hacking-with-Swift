import Cocoa

// You can add a defualt by specifying a second parameter
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20) // Custom defualt
printTimesTables(for: 8) // Predefined defualt


// With an array
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)

characters.removeAll(keepingCapacity: true) // keepingCapacity lets you remove items while keeping the size
