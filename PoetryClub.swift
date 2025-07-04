import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  let arrayOfSplitedLines = poem.components(separatedBy: "\n")
  return arrayOfSplitedLines
  fatalError("Please implement the splitOnNewlines(_:) function")
}

func frontDoorPassword(_ phrase: String) -> String {
  if phrase.isEmpty {
    return "_"
  }
  
  let lines = phrase.components(separatedBy: "\n")
  var result = ""

  for line in lines {
    if let first = line.first {
      result.append(first)
    }
  }
  return result.uppercased()
  fatalError("Please implement the frontDoorPassword(_:) function")
}

func backDoorPassword(_ phrase: String) -> String {
  let lines = phrase.components(separatedBy: "\n")
  var result = ""

  for line in lines {
    let trimmed = line.trimmingCharacters(in: .whitespaces)
    if let last = trimmed.last {
      result.append(last)
    }
  }
  return result + ", please"
  fatalError("Please implement the backDoorPassword(_:) function")
}

func secretRoomPassword(_ phrase: String) -> String {
    let lines = phrase.components(separatedBy: "\n")
    var result = ""
    
    for (index, line) in lines.enumerated() {
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        if trimmed.count > index {
            let character = trimmed[trimmed.index(trimmed.startIndex, offsetBy: index)]
            result.append(character)
        }
    }
    
    return result.uppercased() + "!"
}
