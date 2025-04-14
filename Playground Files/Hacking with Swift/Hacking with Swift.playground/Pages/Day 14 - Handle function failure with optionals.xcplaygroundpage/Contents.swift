import Cocoa

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

// Attempt to get a user with ID 23 using optional try
// If it fails, nothing happens (user is nil)
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// Attempt to get the user again, but provide a fallback value if it fails
let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
