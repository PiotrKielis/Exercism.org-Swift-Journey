func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter, diameter >= 0,
          let slices = slices, slices >= 1 else {
        return nil
    }

    let radius = diameter / 2
    let area = Double.pi * radius * radius
    return area / Double(slices)
}


func biggestSlice(
    diameterA: String, slicesA: String,
    diameterB: String, slicesB: String
) -> String {
  
    let dA = Double(diameterA)
    let dB = Double(diameterB)
    let sA = Int(slicesA)
    let sB = Int(slicesB)

    let sliceA = sliceSize(diameter: dA, slices: sA)
    let sliceB = sliceSize(diameter: dB, slices: sB)


    switch (sliceA, sliceB) {
    case let (a?, nil):
        return "Slice A is bigger"
    case let (nil, b?):
        return "Slice B is bigger"
    case let (a?, b?):
        if a > b {
            return "Slice A is bigger"
        } else if b > a {
            return "Slice B is bigger"
        } else {
            return "Neither slice is bigger"
        }
    default:
        return "Neither slice is bigger"
    }
}
