import Cocoa

let names = ["Alice", "Bob", "Charlie"]

for name in names {
    print("Hello, \(name)!")
}


// For i in range
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}


// Nested loops
for i in 1...12 {
    print("The \(i) times table: ")
    
    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }
    print()
}


// Conditional - the third . becomes the conditioal
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}


// Insert string in x amount of times
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
