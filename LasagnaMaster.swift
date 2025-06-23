// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven (elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes (layers:String...) -> Int {
  var counter = 0
  for layer in layers {
    counter += 1
  }
  return counter * 2
}
// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  func isThereNoodles () -> Int { layers.filter { $0 == "noodles"}.count}
  func isThereSauce () -> Double { Double(layers.filter {$0 == "sauce"}.count)}
  var counter = 0
  for layer in layers {
    counter += 1
  }
  let noodlesAmount: Int = isThereNoodles () * 3
  let sauceAmount: Double = isThereSauce () * 0.2
  
  return (noodlesAmount, sauceAmount)
}
// TODO: define the 'toOz' function
func toOz (_ amount: inout (noodles: Int, sauce: Double)) {
  amount.sauce = amount.sauce * 33.814
}
// TODO: define the 'redWine' function
func redWine (layers: String...) -> Bool {
  func isThereMozzarella () -> Int { layers.filter { $0 == "mozzarella" }.count}
  func isThereRicotta () -> Int { layers.filter { $0 == "ricotta" }.count}
  func isThereBechamel () -> Int { layers.filter { $0 == "béchamel"}.count}
  func isThereSauce () -> Int { layers.filter { $0 == "sauce"}.count}
  func isThereMeat () -> Int { layers.filter {$0 == "meat"}.count}
  if isThereMozzarella () + isThereRicotta () + isThereBechamel () > isThereSauce () + isThereMeat () {
    return false
  } else {
    return true
  }
}
