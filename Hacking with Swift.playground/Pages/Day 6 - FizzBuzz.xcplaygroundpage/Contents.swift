import Cocoa

for number in 1 ... 100 {
    var output = ""
    if number % 3 == 0 { output += "Fizz" }
    if number % 5 == 0 { output += "Buzz" }
    print(output.isEmpty ? number : output)
}
