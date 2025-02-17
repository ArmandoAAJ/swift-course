import Foundation

func noArgumentsAndNoReturnValue() {
    "I don't know what to do here"
}

noArgumentsAndNoReturnValue()

func plusTwo(value: Int){
    let newValue = value + 2
}

plusTwo(value: 29)

func newPlusTwo(value: Int) -> Int {
//    value + 2
    return value + 2
}

newPlusTwo(value: 29)

func customAdd(val1: Int, val2: Int) -> Int {
    val1 + val2
}

let customAdded = customAdd(val1: 29, val2: 2)


func customMinus(_ lhs: Int, _ rhs: Int) -> Int{
    lhs - rhs
}

let customMinusResult = customMinus(33, 2)

@discardableResult
func myCustomAdd(_ lhs:Int, _ rhs:Int) -> Int {
    lhs + rhs
}

func doSomethingCpomplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        return value + 2
    }
    return mainLogic(value: value + 3)
}

doSomethingCpomplicated(with: 26)

func getFullName(
    firstName: String = "Armando",
    lastName: String = "Joergensen"
) -> String {
    "\(firstName) \(lastName)"
}


getFullName()
getFullName(firstName: "Arlan")
getFullName(lastName: "Arlan")
getFullName(firstName: "Arlan", lastName: "Arlan")
