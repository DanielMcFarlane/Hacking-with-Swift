import Cocoa

// Tuple - You can combine types
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Billy", lastName: "Bob")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")


// Example
func getError() -> (Int, String) {
    (404, "Page Not Found")
}

let error = getError()
print("Error: \(error.0) \(error.1)")


// Tupple as variable and _ to skip
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

let (errorCode, _) = getError()
print("Error code: \(errorCode)")
