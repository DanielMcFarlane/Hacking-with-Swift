import Cocoa

// Trailing closure syntax using in keyword
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}


// You can declutter by using pre defined shorthand counting up from 0
// e.g. $0, $1 etc...
let captainFirstTeam2 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}


// Reversed sort
let reverseTeam = team.sorted { $0 > $1 }


// Filter an array, run on every item in an array
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)


// Map an array, create a new array with items
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
