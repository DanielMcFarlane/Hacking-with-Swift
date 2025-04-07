import Cocoa

// Sets create an internal, non duplicate array in Swift
let actors = Set([
    "Denzel Washington",
    "Meryl Streep",
    "Tom Hanks",
    "Matt Damon",
])

print(actors)


// Ading items to a set
var footballTeams = Set<String>()
footballTeams.insert("New England Patriots")
footballTeams.insert("Dallas Cowboys")
footballTeams.insert("Celtic")

print(footballTeams)


// Using contains is the fastest lookup
print(footballTeams.contains("Dallas Cowboys"))

print(actors.count)

print(actors.sorted())
