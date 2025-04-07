import Cocoa


// Variables use var
var greeting = "Hello, playground"
print(greeting)

greeting = "Hello, world!"
print(greeting)


// Constants use let
let name = "Daniel"
print("Hello, \(name)!")


// Inner quotes need a \ before them
let quote = "The future belongs to those who \"believe\" in the possibilities of tomorrow."
print(quote)


// Multi line strings use """
let anotherQuote = """
The future belongs to those
who believe in the possibilities 
of tomorrow.
"""
print(anotherQuote)


// Count the number of characters in a string
print(greeting.count)


// Convert to uppercase
print(quote.uppercased())


// Find if a string starts with selected words
print(quote.hasPrefix("The"))


// Find if a string ends with selected words
print(quote.hasSuffix("tomorrow."))

