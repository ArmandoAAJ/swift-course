import Foundation

protocol CanBreathe{
    func breathe()
}

struct Animal: CanBreathe{
    func breathe() {
        "Animal is breathing"
    }
}

struct Person: CanBreathe{
    func breathe() {
       "Person is breathing"
    }
}

let dog = Animal()
let person = Person()
dog.breathe()
person.breathe()


protocol CanJump{
    func jump()
}

extension CanJump{
    func jump() {
        "jumping"
    }
}

struct Cat: CanJump {
    
}

let whiskers = Cat()
whiskers.jump()

protocol HasName {
    var name: String {get}
    var age: Int {get set}
}

extension HasName {
    func describeMe() -> String {
        "Your name is \(name) and you are \(age) years old"
    }
    
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(name: "woof", age: 1)
woof.name
woof.age += 1
woof.age

woof.describeMe()
woof.increaseAge()
woof.age

protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int = 0
//    init() {
//        self.speed = 0
//    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed

func describe(obj: Any) {
    if obj is Vehicle {
        "obj conforms to the Vehicle protocol"
    } else {
        "obj does not conform to the Vehicle protocol"
    }
}

describe(obj: bike)

func increaseSpeedIfVehicle(obj: Any) {
    if var vehicle = obj as? Vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 200)
        vehicle.speed
    }else{
        "This was not a vehicle"
    }
}

increaseSpeedIfVehicle(obj: bike)
bike.speed
