import UIKit
import SwiftUI

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
//                   ↓ - keeps ram for that array
characters.removeAll(keepingCapacity: true)
print(characters.count)

                                    // Errors in functions

enum PasswordError: Error {
    case short, obvious, stupid, good
}



func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    if password == "11111" { throw PasswordError.stupid}
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Great security"
    }
}



var passcode = "123452"

do {
    let result = try checkPassword(passcode)
    print("Passcode raiting: \(result)")
} catch {
    passcode = "12345!WSADF"
    print("Password has to contain scepial character: ! @ # $ % ^ & * ")
}


/*============================================================================================================================================*/




    enum loginErrors: Error {
        case loginInfo, passLength
    }
    
func login(loginName: String, loginPassword: String) /*throws*/-> String {
    let generalName = "Dmitry Zelenin"
    let generalPass = "1111"
//                                                                if loginName != generalName { throw loginErrors.loginInfo }
//                                                                if loginPassword != generalPass { throw loginErrors.passLength }
//
//                                                                var nameAccess = String()
//                                                                var passAccess = String()
//                                                                var fullAccess = String()
//                                                                var isLoginInfoTrue = String()
    
    var isAccessGranter = String()
    
    if loginName != generalName || loginPassword != generalPass {
        isAccessGranter = "Login or password are incorrect. Try again."
    } else {
        isAccessGranter = "Access granted."
    }
    print(isAccessGranter)
    return "2"
}






//                                                                do {
//                                                                    let result = try login(loginName: "Dmitry Zelenin", loginPassword: "1111")
//                                                                    print(result)
//                                                                } catch {
//                                                                    print("n.")
//                                                                }

login(loginName: "Dmitry Zeenin", loginPassword: "1111")
