import Cocoa

let nums = [1, 2, 3, 4, 5]
var temperatures = [12.4, 13.5, 14.0, 15.1, 16.2]
var names = ["Alice", "Bob", "Charlie"]


// Adding to arays
print(names[0])
names.append("Billy")
print(names)


// Creating arrays
var scores = Array<Int>()
scores.append(100)
scores.append(90)
scores.append(80)
print(scores[1])

var albums = Array<String>()
albums.append("Thriller")
albums.append("Back in Black")
albums.append("Purple Rain")
print(albums[2])


// Shorthand for arrays
var colours = [String]()
colours.append("Red")
colours.append("Blue")
colours.append("Green")
print(colours[1])
print(colours.count)


// Removing from an array
var characters = ["A", "B", "C", "D", "E"]
print(characters.count)

characters.remove(at: 2) // All but postion 2
print(characters.count)

characters.removeAll()
print(characters.count)


// Search an array
let films = ["The Shawshank Redemption", "The Godfather", "The Godfather: Part II", "The Dark Knight", "12 Angry Men"]
print(films.contains("The Godfather"))


// Sort an array
let countries = ["France", "Italy", "Spain", "United Kingdom", "Germany"]
print(countries.sorted())


// Reverse an array
let food = ["Pizza", "Pasta", "Burger", "Salad", "Ice cream"]
let reversedFood = food.reversed()
print(reversedFood)
