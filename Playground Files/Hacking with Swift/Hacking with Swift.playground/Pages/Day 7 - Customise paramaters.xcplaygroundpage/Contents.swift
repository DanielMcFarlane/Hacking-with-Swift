import Cocoa

// Swift is unique as it lets you name parameters to help with readability
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "I wanna dance with somebody"
print(lyric.hasPrefix("I wanna"))


// Adding an underscore and space removes the external parameter name
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


// You can mix external and internal names
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
