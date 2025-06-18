func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyCost = price / 60
  let extraMonthlyBudget = monthlyBudget + (monthlyBudget * 0.1)
  if monthlyCost <= monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  } else if monthlyCost <= extraMonthlyBudget {
      return "I'll have to be frugal if I want a \(vehicle)"
  } else {
      return "Darn! No \(vehicle) for me"
  }
  fatalError("Please implement the canIBuy(vehicle:price:monthlyBudget:) function")
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 ||  wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  } else {
    return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Double {
  if yearsOld < 3 { 
    return Double(originalPrice) * 0.8  
  } else if yearsOld >= 10 {
    return Double(originalPrice) * 0.5
  } else  {
    return Double(originalPrice) * 0.7
  }
  fatalError("Please implement calculateResellPrice(originalPrice:yearsOld:) function")
}
