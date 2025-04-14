import Cocoa

// You should always use enums when a variable (especially a method parameter)
// can only take one out of a small set of possible values kind of like a switch case

var selected = "Monday"
selected = "January"
selected = "Wednesday "

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var day = Weekday.monday
day = .tuesday // You can drop the weekday if it's already been asigned becasue it has to be a weekday


// Swift stores enums in a highly optomised way
// e.g. it checks for 0 instead of M,o,n,d,a,y
