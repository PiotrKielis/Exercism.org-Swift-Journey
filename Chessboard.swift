// TODO: define the 'ranks' constant
let ranks = 1...8
// TODO: define the 'files' constant
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  let ranks = 1...8
  let files = "A"..."H"
  if ranks.contains(rank) && files.contains(file) {
    return true
  } else {
    return false
  }
  fatalError("Please implement the isValidSquare(rank:file:) function")
}

func getRow(_ board : [String], rank: Int) -> [String] {
  var slice: [String] = []
  if rank == 1 {
    slice = Array(board[0...7]) 
  } else if rank == 2 {
    slice = Array(board[8...15])
  } else if rank == 3 {
    slice = Array(board[16...23])
  } else if rank == 4 {
    slice = Array(board[24...31])
  } else if rank == 5 {
    slice = Array(board[32...39])
  } else if rank == 6 {
    slice = Array(board[40...47])
  } else if rank == 7 {
    slice = Array(board[48...55])
  } else if rank == 8 {
    slice = Array(board[56...63])
  } else {
    print("Out of range")
  }
  return slice
  fatalError("Please implement the getRow(_:rank:) function")
}

/*
func getRow(_ board: [String], rank: Int) -> [String] {
    guard rank >= 1 && rank <= 8 else {
        print("Out of range")
        return []
    }

    let startIndex = (rank - 1) * 8
    let endIndex = startIndex + 8

    return Array(board[startIndex..<endIndex])
}
/*
