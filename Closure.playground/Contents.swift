import Foundation

let add: (Int, Int) -> Int = {(lhs: Int, rhs: Int) -> Int in return lhs + rhs}

add(28, 1)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using closure: (Int, Int) -> Int
) -> Int {
    closure(lhs, rhs)
}

customAdd(
    28,
    1
    )
{(lhs:Int, rhs:Int) -> Int in  lhs + rhs}
    

customAdd(
    28,
    1
    )
{(lhs,rhs) in  lhs + rhs}


customAdd(28,1) {$0 + $1}

let ages = [1, 2, 3, 4, 5]

ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in lhs > rhs})
    
ages.sorted(by: <)
ages.sorted(by: >)


func customAdd2(
    using closure: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    closure(lhs, rhs)
}

customAdd2(using: { $0 + $1}, 28, 1)

func add10To(value: Int) -> Int {
    value + 10
}

func add20To(value: Int) -> Int {
    value + 20
}

func doAddition(on value: Int, using closure: (Int) -> Int) -> Int {
    closure(value)
}

doAddition(on: 28){ (value) in value + 1}

doAddition(on: 28, using: add10To(value:))
doAddition(on: 28, using: add20To(value:))
