/*Напишите на swift код для поставки внешним клиентам, который позволяет вычислять
 площадь круга по радиусу и треугольника по трем сторонам. Дополнительно к работоспособности оценим:
- Юнит-тесты
- Легкость добавления других фигур
- Вычисление площади фигуры без знания типа фигуры в compile-time
- Проверку на то, является ли треугольник прямоугольным
 */
import UIKit
import XCTest

protocol SizeArea {
	func calculateArea() -> Double
}

struct Circle: SizeArea {
	let radius: Double
	func calculateArea() -> Double {
		let calculateCyrcle = Double.pi * radius * radius
		return calculateCyrcle
	}	
}

struct Triangle: SizeArea {
	let side1, side2, side3: Double
	
	func rectangular() -> Bool {
		let arraySide = [side1, side2, side3].sorted()
		return arraySide[0] * arraySide[0] + arraySide[1] * arraySide[1] == arraySide[2] * arraySide[2]
	}
	
	func calculateArea() -> Double {
		if side1 < 0.0 || side2 < 0.0 || side3 < 0.0 {
			fatalError("incorrect side value. enter positive values")
		}
		
		if side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1 {
			fatalError("enter sides such that the sum of two sides is greater than the third side")
		}
		
		if rectangular() {
			print("this triangle is rectangular")
		}
		
		let halfPerimetr = 0.5 * (side1 + side2 + side3) 
		let calculateTriangle = sqrt(halfPerimetr * (halfPerimetr - side1) * (halfPerimetr - side2) * (halfPerimetr - side3))
		
		return calculateTriangle
	}
}

// MARK: - Вычисление площади фигуры без знания типа фигуры
// Непонятно, это правильный или неправильный многоугольник.
// Есть разные методы вычисления площадей фигуры: м.Гаусса, разбиением на треугольники или трапеции, м.Эйлера
protocol Polygon: SizeArea {
	var sides: [Double] { get set } 
	func allPositive() -> Bool
}

extension Polygon {
	func allPositive() -> Bool {
		return sides.allSatisfy { $0 > 0 }
	}
}

struct CustomShape: Polygon {
	var sides: [Double]

	func calculateArea() -> Double {
		guard allPositive() else {
			fatalError("Invalid side values. Enter positive values.")
		}

		// длины сторон равны у правильного многоугольника
		let sideLength = sides[0]
		let numberOfSides = Double(sides.count)

		// площадь многоугольника с длиной стороны и их числом
		let numerator = numberOfSides * sideLength * sideLength
		let denominator = 4 * tan(Double.pi / numberOfSides)
		let area = numerator / denominator

		return area
	}
}

// MARK: - main

let myTriangle = Triangle(side1: 5.0, side2: 4.0, side3: 3.0)
let triangleArea = myTriangle.calculateArea()
print("Area of the triangle: \(triangleArea)")

let myCircle = Circle(radius: 2.0)
let circleArea = myCircle.calculateArea()
print("Area of the circle: \(circleArea)")

let customShape = CustomShape(sides: [4, 4, 4, 4])
let area = customShape.calculateArea()
print("Area of the random sides: \(area)")
print("\n")

// MARK: - Tests
class ShapeTests: XCTestCase {
	
	func testTriangleAreaCalculation() {
		let triangle = Triangle(side1: 5.0, side2: 4.0, side3: 3.0)
		XCTAssertEqual(triangle.calculateArea(), 6.0, accuracy: 0.001)
	}
	
	func testTCircleAreaCalculation() {
		let circle = Circle(radius: 2.0)
		XCTAssertEqual(circle.calculateArea(), 12.5, accuracy: 0.001)
	}
}

let testSuite = ShapeTests() // экземпляр тестового кейса
testSuite.run() // запуск теста

