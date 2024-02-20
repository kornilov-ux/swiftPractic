enum DayOfWeek {
	case Sunday 
	case Monday 
	case Tuesday
	case Wednesday
	case Thursday
	enum Friday {
		case Day
		case night
	}
	case Saturday
}

let currentDay = DayOfWeek.Friday.Day

switch currentDay {
case .Day:
	print("now day")
case .night:
	print("now night")
}

enum Operations {
	case Double(Double)
	case Int(Int)
	case Float(Float)
	case String(String)
}

var dictionary: Dictionary<String, Operations> = [
	"Double": Operations.Double(10.9),
	"Int": Operations.Int(5),
	"Float": Operations.Float(22.1),
	"String": Operations.String("String")
]

let console = dictionary["String"]
//var console: Any?
//if let print1 = console { print(print1) } else {print("nil")}
func testGuard() -> Any? {
	guard let print2 = console else { 
		return print("none")
	}
	return print(print2 as Any)
}
//testGuard()

// MARK: - Documentation
enum Beverage: CaseIterable {
	case coffee, tea, juice
	case vodka
}
let numberOfChoices = Beverage.allCases.count
print(numberOfChoices)
for drink in Beverage.allCases {
	print(drink)
}
 

