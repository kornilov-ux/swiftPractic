import UIKit

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
	
	func calculateArea() -> Double {
		if side1 < 0.0 || side2 < 0.0 || side3 < 0.0 {
			fatalError("incorrect side value. enter positive values")
		}
		
		var arraySide = [side1, side2, side3].sorted()
		if arraySide[0] * arraySide[0] + arraySide[1] * arraySide[1] == arraySide[2] * arraySide[2] {
			print("this triangle is rectangular")
		}
		
		let halfPerimetr = 0.5 * (side1 + side2 + side3) 
		let calculateTriangle = sqrt(halfPerimetr * (halfPerimetr - side1) * (halfPerimetr - side2) * (halfPerimetr - side3))
		
		return calculateTriangle
	}
}

struct Polygon: SizeArea {
	func calculateArea() -> Double {
		
		return 0.0
	}
}
