import Foundation

let myAge = 20
let yourAge = 21

if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "Oh, we are the same age!"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

/// unary prefix
let foo = !true
/// unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
/// binary infix
let result = 1 - 2
let names = "Foo" + "  " + "Bar"

let age = 30
//let message: String
//if age >= 18 {
//    message = "You are an adult."
//} else {
//    message = "You are a minor."
//}
// message

let message = age >= 18 ? "You are an adult." : "You are a minor."

