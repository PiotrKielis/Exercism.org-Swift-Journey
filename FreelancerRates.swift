func dailyRateFrom(hourlyRate: Int) -> Double {
  let dHourlyRate: Double = Double(hourlyRate)
  return dHourlyRate * 8
  fatalError("Please implement the dailyRateFrom(hourlyRate:) function")
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dHourlyRate = Double(hourlyRate)
  let monthsRate = dHourlyRate * 8
  var x:Double = (monthsRate * 22)
  let xWithDiscount: Double = discount / 100 
  x = x - (x * xWithDiscount)
  let y: Double = x.rounded()
  return y
  fatalError("Please implement the monthlyRateFrom(hourlyRate:withDiscount:) function")
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dHourlyRate: Double = Double(hourlyRate)
  var day: Double =  dHourlyRate * 8
  let xWithDiscount: Double = discount / 100
  day = day - (day * xWithDiscount)
  let days: Double = budget / day
  let xDays: Double = days.rounded(.down)
  return xDays
  fatalError("Please implement the workdaysIn(budget:hourlyRate:withDiscount:) function")
}

/*
----or like this:

func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = Double(hourlyRate) * 8
    let monthlyRate = dailyRate * 22
    let discounted = monthlyRate * (1 - discount / 100)
    return discounted.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = Double(hourlyRate) * 8
    let discountedRate = dailyRate * (1 - discount / 100)
    let workdays = budget / discountedRate
    return floor(workdays) // lub workdays.rounded(.down)
}
*/
