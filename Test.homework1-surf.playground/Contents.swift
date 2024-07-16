// 1.1
var stringOne: String = "2"
var stringTwo: String? = "3"

let intOne: Int = 4
let intTwo: Int? = 5

enum Consts {
	case intOne
	case intTwo
}

let resultSumConts = (intTwo != nil) ? intOne + intTwo! : 0
print(resultSumConts)

if intOne < intTwo! {
	print("intTwo more")
} else {
	print("intOne more")
}

// MARK: -1.2
protocol SomeStr {
	var fullName: String {get set}
}

struct Persons: SomeStr {
	var fullName: String
	var colorEyes: String
	var age: Int
}

class People {
	init(nickname: SomeStr) {
		self.nickname = nickname
	}
	var nickname: SomeStr?
	enum myPersons {
		case colorEyes
		case age
	}
}

let person1 = Persons(fullName: "Ann", colorEyes: "Blue", age: 22)
let objPeople = People(nickname: person1)
//print("\(objPeople)")

// MARK: -1.3
var dictionary1: [Int: String] = [1: "1", 2: "2", 3: "3333", 4: "44444", 5: "five"]
var arrayInt1 = [11, 22, 4, 3]
var arrayInt2 = arrayInt1.compactMap { number in dictionary1[number]}
print("Array2: \(arrayInt2)")
var arrayInt3 = arrayInt2.filter {$0.count > 4}
print("Array3: \(arrayInt3)")
