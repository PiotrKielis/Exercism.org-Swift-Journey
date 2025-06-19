func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
  fatalError("Please implement the getCard(at:from:) function")
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  var newStack = stack
  var size = newStack.count - 1
  if index <= size {
    newStack[index] = newCard
  } else {
    print("index out of range")
  }
  return newStack
  fatalError("Please implement the setCard(at:from:to:) function")
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.append(newCard)
  return newStack
  fatalError("Please implement the insert(_:atTopOf:) function")
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  var newStack = stack
  var size = newStack.count - 1
  if index <= size {
      newStack.remove(at : index)
  } else {
    print("index out of range")
  }
  return newStack
  fatalError("Please implement the removeCard(at:from:) function")
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  var newStack = stack
  var size = newStack.count - 1
  if index >= 0 && index <= stack.count {
    newStack.insert(newCard, at : index)
  } else {
    print("index out of range")
  }
  return newStack
  fatalError("Please implement the insert(_:at:from:) function")
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  if stack.count == size {
    return true
  } else {
    return false
  }
  fatalError("Please implement the checkSizeOfStack(_:_:) function")
}

