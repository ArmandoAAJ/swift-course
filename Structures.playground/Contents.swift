import Foundation

struct Person {
    let name: String,
     age: Int
}

let firstPerson = Person(name: "Armando", age: 29)

firstPerson.name
firstPerson.age

//struct CommodoreComputer {
//    let name: String,
//        manuFacturer: String
//        init(name: String) {
//            self.name = name
//            self.manuFacturer = "Commodore"
//        }
//}

struct CommodoreComputer {
    let name: String
    let manuFacturer = "Commodore"
}

let c64 = CommodoreComputer(name: "My commodore")
c64.name
c64.manuFacturer
let c128 = CommodoreComputer(name: "My commodore m128")
c128.name
c64.manuFacturer

//struct Person2 {
//    let firstName: String,
//    lastName: String,
//        fullName: String
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.fullName = "\(firstName) \(lastName)"
//    }
//}

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String  {
        "\(firstName) \(lastName)"
    }
}


let fooBar = Person2(firstName: "Armando", lastName: "Joergensen")
fooBar.firstName
fooBar.lastName
fooBar.fullName

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving..."
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20) Error

var mutableCar = Car(currentSpeed: 10)
let copy = mutableCar
mutableCar.drive(speed: 20)
mutableCar.currentSpeed
copy.currentSpeed

struct LivingThing {
    init() {
        "I'm a living thing"
    }
}

//struct Animal: LivingThing {
//    
//}

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copiedWithSpeed(newSpeed: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: newSpeed)
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)
    
let bike2 = bike1.copiedWithSpeed(newSpeed: 30)
bike1.currentSpeed
bike2.currentSpeed




