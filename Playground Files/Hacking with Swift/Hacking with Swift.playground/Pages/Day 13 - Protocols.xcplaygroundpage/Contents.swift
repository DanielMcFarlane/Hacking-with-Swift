import Cocoa

// Protocols are a bit like contracts in Swift:
// they let us define what kinds of functionality we expect a data type to support, and Swift ensures that the rest of our code follows those rules.
// Not exaclty but think abstract classes in java
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    var name: String = "Car"
    var currentPassengers: Int = 1

    func estimateTime(for distance: Int) -> Int {
        return distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name: String = "Bicycle"
    var currentPassengers: Int = 1

    func estimateTime(for distance: Int) -> Int {
        return distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)


// Swift vs Java example
/*

protocol Animal {
    func makeSound()
}

class Dog: Animal {
    func makeSound() {
        print("Bark")
    }
}

class Cat: Animal {
    func makeSound() {
        print("Meow")
    }
}

 
// vs
 
 
abstract class Animal {
    abstract void makeSound();
}

class Dog extends Animal {
    void makeSound() {
        System.out.println("Bark");
    }
}

class Cat extends Animal {
    void makeSound() {
        System.out.println("Meow");
    }
}
 
*/
