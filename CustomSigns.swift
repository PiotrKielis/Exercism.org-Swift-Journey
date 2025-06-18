// TODO: define the 'birthday' String constant
let birthday: String = "Birthday"
// TODO: define the 'valentine' String constant
let valentine: String = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary: String = "Anniversary"
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"
func buildSign(for occasion: String, name: String) -> String {
  let sign: String = "Happy \(occasion) \(name)!"
  return sign
}

func graduationFor(name: String, year: Int) -> String {
  let graduation: String = "Congratulations \(name)!\nClass of \(year)"
  return graduation
}

func costOf(sign: String) -> Int {
  let counter: Int = sign.count
  return 20 + (sign.count * 2)
}
