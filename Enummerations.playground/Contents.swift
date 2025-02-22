import Foundation

enum Animal {
    case cat
    case dog
    case bird
}

let cat = Animal.bird
//let dog: Animal = .dog
//let bird: Animal = .bird
//
//cat
//dog
//bird

if(cat == Animal.cat) {
    "This is a cat"
} else if (cat == Animal.dog) {
    "This is a dog"
} else{
    "This is something else"
}

switch cat {
case .cat:
    "This is a cat"
    break
case .bird:
    "This is a bird"
    break
case .dog:
    "This is a dog"
    break
}

switch cat {
case .cat:
    "This is a cat"
    break
case .bird:
    "This is a bird"
    break
default:
    "This is a something else"
}


enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}


let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
case .fileOrFolder(path: let p, name: let n):
    p
    n
    break
case .wwwUrl(path: let p):
    p
    break
case .song(artist: let a, songName: let p):
    a
    p
    break
}


switch wwwApple {
case .fileOrFolder(let p, let n):
    p
    n
    break
case .wwwUrl(let p):
    p
    break
case .song(let a, let p):
    a
    p
    break
}


switch wwwApple {
case let .fileOrFolder(p, n):
    p
    n
    break
case let .wwwUrl(p):
    p
    break
case let .song(a, p):
    a
    p
    break
}


if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(artist: "Symphony X", songName: "Without you")

if case let .song(_, songName) = withoutYou {
    songName
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearModel: Int)
}



func getManufacturer(from vehicle: Vehicle) -> String {
    switch vehicle {
    case let .car(manufacture, _):
        return manufacture
    case let .bike(manufacturer, _):
        return manufacturer
    }
}

let car = Vehicle.car(manufacturer: "Toyota", model: "Corolla")

getManufacturer(from: car)


switch car {
case let .car(manufacture, _):
    manufacture
    break
case let .bike(manufacturer, _):
    manufacturer
    break
}

let bike = Vehicle.bike(manufacturer: "Honda", yearModel: 2020)

getManufacturer(from: bike)


enum Tecnology {
    case celphone(brand: String, model: String)
    case computer(brand: String, model: String)
    
    var brander: String {
        switch self {
            case let .celphone(brand, _),
            let .computer(brand, _):
            return brand
        }
    }
}

let phone = Tecnology.celphone(brand: "Apple", model: "iPhone 12")

phone.brander


let computer = Tecnology.computer(brand: "Dell", model: "XPS 13")

computer.brander
enum FamilyMenber: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMenber.father.rawValue
FamilyMenber.brother.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

if let blush = FavoriteEmoji(rawValue: "😊") {
    "Snow exists?! Really?"
    blush
} else {
    "It doesn't exist..."
}

if let snow = FavoriteEmoji(rawValue: "❄") {
    "Snow exists?! Really?"
    snow
} else {
    "It doesn't exist..."
}

enum Height: Int {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight: Height = .medium
myHeight.makeLong()
myHeight

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateRes(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateRes(of: operation)
        }
    }
}

let freeHand = IntOperation.freehand(.add(2,4))
freeHand.calculateRes()



