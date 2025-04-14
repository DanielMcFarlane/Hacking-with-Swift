import Cocoa

// Setting data types
let surname: String = "Kuznetsov"
let score: Int = 2
let pi: Double = 3.141
var isStudent: Bool = true


// Complex types
var array: [Int] = [1, 2, 3]
var soda: [String] = ["Coca-Cola", "Pepsi", "Sprite"]
var cars: [String] = [] // Empty array
var points = [Int]() // Empty array using type inferance
var teams: [String] = [String]() // Empty array using type inferance
var dictionary: [String: Int] = ["apple": 2, "banana": 5]
var books: Set<String> = Set(["To Kill a Mockingbird", "1984"])


// Enums
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.dark
style = .dark // You can skip the type


// You can asign blank constants and use them later
let username: String
// code
username = "Daniel"
// code
print(username)
