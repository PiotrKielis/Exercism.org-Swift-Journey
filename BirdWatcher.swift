func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var counter: Int = 0
  for i in 0..<birdsPerDay.count {
    counter = counter + birdsPerDay[i]
  }
  return counter
  fatalError("Please implement the totalBirdCount(_:) function")
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  let startIndex =  (weekNumber - 1) * 7
  let endIndex = startIndex + 7
  guard startIndex >= 0, endIndex <= birdsPerDay.count else {
    print("Week number out of range")
    return 0
  }
  var counter: Int = 0
  for i in startIndex..<endIndex {
    counter += birdsPerDay[i] 
  }
  return counter
  fatalError("Please implement the birdsInWeek(_:weekNumber:) function")
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var fixedArray = birdsPerDay
  for i in stride(from:0, to:birdsPerDay.count - 1, by:2) {
    fixedArray[i] = fixedArray[i] + 1
  }
  return fixedArray
  
  fatalError("Please implement the fixBirdCountLog(_:) function")
}
