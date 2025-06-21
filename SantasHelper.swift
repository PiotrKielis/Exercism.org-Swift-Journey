func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
  fatalError("Please implement the getName(_:) function")
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name, amount)
  fatalError("Please implement the createToy(name:amount:) function")
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) -> [(name: String, amount: Int)] {
    var updatedItems = items
    for i in 0..<updatedItems.count {
        if updatedItems[i].name == toy {
            updatedItems[i].amount = amount
        }
    }
    return updatedItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
    var categorizedToys: [(name: String, amount: Int, category: String)] = []

    for toy in items {
        categorizedToys.append((name: toy.name, amount: toy.amount, category: category))
    }

    return categorizedToys
}
