import Cocoa

let employee = [
    "name" : "John",
    "job" : "Engineer",
    "location" : "New York"
]

print(employee["password"]) // Optionals, it may or may not be there. Avoid this

print(employee["name", default: "Unknown"]) // Create a default to avoid this



// Different KVP examples
let hasGraduated = [
    "Daniel" : false,
    "Bily" : true,
    "Bob" : false
]

let olympics = [
    2012 : "London",
    2016 : "Rio",
    2021 : "Tokyo"
]

print(olympics[2012, default: "Unknown"])


// Build from an empty dictionary
var heights = [String: Int]()
heights["John"] = 178
heights["Jane"] = 165
heights["Bob"] = 182

print(heights)
