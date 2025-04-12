import Cocoa

extension Int {
    func squared() -> Int {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())

extension Numeric {
    func squared() -> Self {
        self * self
    }
}

let someInt: Int = 4
let someDouble: Double = 3.141
print(someInt.squared())
print(someDouble.squared())

struct User: Comparable {
    let name: String

    static func < (lhs: User, rhs: User) -> Bool {
        lhs.name < rhs.name
    }
}

let user1 = User(name: "Taylor")
let user2 = User(name: "Adele")

print(user1 == user2)
print(user1 != user2)
print(user1 < user2)
print(user1 <= user2)
print(user1 > user2)
print(user1 >= user2)
