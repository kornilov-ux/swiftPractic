
var gradebook = [Any]()
func helpTeach(name: String, professional: String, grade: Int) {
	gradebook.append(name)
	gradebook.append(professional)
	gradebook.append(grade)
}

helpTeach(name: "Alex", professional: "doctor", grade: 19)
helpTeach(name: "Ann", professional: "economist", grade: 20)
helpTeach(name: "Inna", professional: "lawyer", grade: 21)

for grade in gradebook {
	print("\(grade)")
}

var nameTuple = ("Liza", "Ann", "Alex")
var gradeTuple = (3, 4, 5)
var student = ["name": nameTuple, "grade": gradeTuple] as [String: Any]
print(student["name"] ?? "not found")
