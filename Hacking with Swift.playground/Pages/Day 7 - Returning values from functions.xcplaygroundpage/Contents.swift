import Cocoa

let root = sqrt(169)
print(root)


// Returning a value. -> idicates the return type
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// Example
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted() // You can remove the return if it's one line
}

func randomNum() -> Int {
    Int.random(in: 1...6)
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
