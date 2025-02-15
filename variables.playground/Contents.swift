import Foundation


// let x var

let myName = "Armando"
let yourName = "Arlan"

//myName = yourName error

//let names = [ myName, yourName ] error

var names = [ myName, yourName ]
//names = ["Zanini"] result = Zanini
names.append("Joergensen")

let foo = "foo"
var foo2 = foo
foo2 = "foo 2"
foo
foo2

let moreNames = ["Foo", "Bar"]

var copy = moreNames
copy.append("Baz")
moreNames
copy

let oldArray = NSMutableArray(array: ["foo", "bar"])
oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray

let someNames = NSMutableArray(array: ["foo", "bar"])
//someNames = ["Test"] error
func changeThisArray(_ array: NSArray) {
    // bad code rsrs
    let copy = array as! NSMutableArray
    copy.add("Baz")
}

changeThisArray(someNames)
someNames
