import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("The score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

