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

print(getUser(one: "Swift", two: "developer"))


                                // enums

enum whereToGo: Int {
    case north = 1, south = 2
}
print(whereToGo.south)

var arrayOne = ["TerryOne", "TerTwo", "TerryThree"]
var terry = [String]()

for i in arrayOne {
    if i.hasPrefix("Terry") {
        terry.append(i)
    } else {
        continue
    }
}

print(terry)


enum Things: String {
    case cup = "My favourite cup"
    case plate = "Plate from Familia shop"
    case pen = "Braumberg pen"
}

enum Numbers {
    case first, second, third, forth, fifth
}

var part = Numbers.first
part = .second

print(part)

                                            // Default values

func countNumbers(for number: Int, end: Int = 12) {
    print()
    print("\(end) times table")
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

countNumbers(for: 2)

var characters = ["Steve", "Micle", "Jane", "Lola"]
print(characters.count)
//                   ↓ - keeps ram for that arary
characters.removeAll(keepingCapacity: true)
print(characters.count)

