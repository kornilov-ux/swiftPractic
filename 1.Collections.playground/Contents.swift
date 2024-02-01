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
