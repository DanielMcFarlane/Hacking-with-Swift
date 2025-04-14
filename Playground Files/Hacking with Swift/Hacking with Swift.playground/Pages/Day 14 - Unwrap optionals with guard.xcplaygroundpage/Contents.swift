import Cocoa

// Guard let
// Only runs if the code doesn't have a value
// It's an early return...
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}
