
let minutes = 60
let minuteInterval = 5
for _ in stride(from: 0, through: minutes, by: minuteInterval) {
	//print("\(render)")
}

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
repeat {
  // идти вверх или вниз по змеям или лестницам
  square += board[square]
  // бросить кубик
  diceRoll += 1
  if diceRoll == 7 { diceRoll = 1 }
  // начать ходить на выпавшее количество шагов
  square += diceRoll
	//print("Squre: \(square)")
} while square < finalSquare 
print("Game over!")

//MARK: - switch/case
let somePoint = (10, 0)
switch somePoint {
case (0, 0):
	print("\(somePoint) is at the origin")
case (_, 0):
	print("\(somePoint) is on the x-axis")
case (0, _):
	print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
	print("\(somePoint) is inside the box")
default:
	print("\(somePoint) is outside of the box")
}

