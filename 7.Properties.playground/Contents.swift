import UIKit

struct Observer {
	
//	init(name: String) {
//		self.name = name
//	}
	
	var name: String {
		willSet {
			print("Change old value on new value = " + newValue)
		}
		didSet {
			print("didSet value = " + oldValue)
		}
	}
}

var objObserver = Observer(name: "Alex")
objObserver.name // getter
objObserver.name = "Ann" // setter
print(objObserver.self)
print(objObserver.name)


class Observer1 {
	
//	init(name: String) {
//		self.name = name
//	}
	
	var name: String = "nil" {
		willSet {
			print("Change old value on new value = " + newValue)
		}
		didSet {
			print("didSet value = " + oldValue)
			name = name.capitalized
		}
	}
}

// var odjObserver1 = Observer1(name: "Sam")
var odjObserver1 = Observer1()
odjObserver1.name = "SAm"
odjObserver1.name = "KAttY"
print(odjObserver1.name)

// MARK: - Computed Properties
struct PropertiesCompyter {
	var firstName: String
	var lastName: String
	var fullName: String {
		get{
			return firstName + " " + lastName
		}
		set {
			print("setter is work =" + " " + newValue)
		}
	}
}

var objPropertiesCompyter = PropertiesCompyter(firstName: "Ann", lastName: "Si")
objPropertiesCompyter.fullName
objPropertiesCompyter.fullName = "ff"

objPropertiesCompyter.firstName = "Alex"
print(objPropertiesCompyter.fullName)
print("\n")

class PropertiesCompyter1 {
	
	init(firstName: String, lastName: String) {
		self.firstName = firstName
		self.lastName = lastName
	}
	
	var firstName: String
	var lastName: String
	var fullName: String {
		get{
			return firstName + " " + lastName
		}
		set {
			print("setter is work =" + " " + newValue)
		}
	}
}

var objPropertiesCompyter1 = PropertiesCompyter1(firstName: "San", lastName: "Di")
objPropertiesCompyter1.fullName = "Lisa"
print(objPropertiesCompyter1.fullName)
