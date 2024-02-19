import UIKit

let digitNames = [
	0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
	5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [160, 51, 00]

//let strings = digitNames.sorted { $0 > $1 }
//print(strings)
let strings = numbers.map { (number) -> String in
	var number = number
	var output = ""
	repeat {
		output = digitNames[number % 10]! + output
		number /= 10
	} while number > 0
	
	return output
}
//print(strings)

// MARK: - захват значений (Capturing Values)
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
	var runningTotal = 0
	func incrementer() -> Int {
		runningTotal += amount 
		return runningTotal
	}
	return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()

func makeHiFunc(str: String) -> (String) -> (String) {
	return { (name: String) -> String in return (str + " " + name)  }
}
var engHi = makeHiFunc(str: "Hello")
let checkHi = engHi("Alex")
//print(checkHi)

// MARK: - Escaping Closures (Сбегающие замыкания)
var completionHandlers: [() -> Void] = []
// func принимает closure в качестве аргумента объявленного за пределами func
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) { 
	completionHandlers.append(completionHandler)
}

func someFunctionWithNoneЕscapingClosure(closure: () -> Void) {
	closure()
}

class SomeClass {
	var x = 10
	func doSomething() {
		someFunctionWithNoneЕscapingClosure { x = 200 }
		someFunctionWithEscapingClosure { self.x = 100 }		
	}
}

let instance = SomeClass()
instance.doSomething()

print(instance.x) // "200"
 
completionHandlers.first?()
print(instance.x) // "100"
