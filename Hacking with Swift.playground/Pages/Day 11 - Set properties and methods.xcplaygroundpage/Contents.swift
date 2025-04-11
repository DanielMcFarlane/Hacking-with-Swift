import Cocoa

// Static means both the studentCount property and add() method belong to the School struct itself, rather than to individual instances of the struct.
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// self = the current value of a struct e.g. 55, "Hello", true
// Self = the current type of struct e.g. Int, String, Bool

//Example
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

AppData.version

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

Employee.example.username
