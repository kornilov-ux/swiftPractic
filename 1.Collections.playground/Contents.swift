var testA = Array(repeating: 3.0, count: 3)
print(testA)


var shoppingList = ["Eggs", "Milk"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList.insert("Maple Syrup", at: 0)


for (index, value) in shoppingList.enumerated() {
 print("Item \(index): \(value)")
}

var testB = Array(repeating: shoppingList, count: 2)
print(testB)

//MARK: - Sets and Dictionaries 
var genreSet: Set = ["Classical", "Rock", "Rock", "Techno"]
genreSet.insert("Jazz")
for (index, genre) in genreSet.enumerated() {
	print("Item \(index): \(genre)")}

var genreSet2: Set = ["Classical2", "Rock2", "Rock2", "Techno2"]

var genreSetUnion = genreSet.union(genreSet2).sorted()
print(genreSetUnion)
print("\r ")

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports)
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
  print("The old value for DUB was \(oldValue).")
}
if let airportName = airports["DUB"] {
  print("\rThe name of the airport is \(airportName).")
} 
airports["APL"] = "Apple International"
if let removeValueAirports = airports.removeValue(forKey: "YYZ") {
	print("The removed airport's name is \(removeValueAirports)")
}
for (airportCode, airportName) in airports {
	print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
	print("Airport code: \(airportCode)")
}

var airportCode = [String](airports.keys)
print("\r\(airportCode)") 



