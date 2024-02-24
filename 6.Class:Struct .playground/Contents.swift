
class House {
	var width: Int 
	var height: Int
	
	init(width: Int, height: Int) {
		self.width = width
		self.height = height
	}
	
	func create() -> Int {
		return width * height
	}
	
	func destroy() -> String {
		return (width == 0 || height == 0) ? "The house is destroyed" : "The house is still standing"
	}
}

let myHouse = House(width: 0, height: 10)
print(myHouse.destroy())

class School {
	
	
	func sortStudents(array: [String]) -> [String] {
		let sortArray = array.sorted{$0 < $1}
		return sortArray
	}
}

let ArrayStudents = ["Alex", "Ann", "Sam", "Danny", "Liza", "Katty"]

let someSchool = School()
let pr = someSchool.sortStudents(array: ArrayStudents)
print(pr)
