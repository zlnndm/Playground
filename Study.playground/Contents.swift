import UIKit

var greeting = "Hello, playground"

func count(one: Int, two: Int) -> Int {
    return one + two
}

print(count(one: 4, two: 242))

var hello = "Hellllooo"

print(1+234221-123)




                                // return values from the func - TUPLES

func getUser(one: String, two: String) -> String {
  return "You are \(one) \(two)"
}



                                // enums

enum whereToGo: Int {
    case north = 1, south = 2
}
print(whereToGo.south)

var arrayOne = ["TerryOne", "TerryTwo", "TerryThree"]
var terry = [String]()

for i in arrayOne {
    if i.hasPrefix("Terry") {
    }
}

print(terry)
