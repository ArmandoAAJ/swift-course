import Foundation

let myName = "Armando"
let myAge = 29
let yourName = "Foo"
let yourAge = 19

if myName == "armando" {
    "Your name is \(myName)"
} else{
    "Opps, I guessed it wrong!"
}

if myName == "Armando" {
    "Now I guessed it correct"
} else if myName == "Foo" {
    "Are you Foo?"
}else{
    "Okay I give up"
}

if "Armando" == myName {
    "An uncommon way of doing this"
}

if myName == "Armando" && myAge == 59 {
    "Name is Armando and age is 29"
} else if myAge == 29{
    "I only guessed the age right"
} else {
    "I don't know what I'm doing"
}

if myAge == 29 || myName == "Foo" {
    "Either age is 29, name is Armando or both"
} else  if myName == "Armando" || myAge == 29 {
    "It's too late to get in this clause"
}

if myName == "Armando"
    && myAge == 22
    && yourName == "Foo"
    || yourAge == 19 {
    "Armando, I'm 29 and you're either Foo or 19"
}

if (myName == "Armando"
    && myAge == 22)
    &&
    ( yourName == "Foo"
    || yourAge == 19) {
    "My name is Armando and I'm 29... And your name is Foo or you are 19"
}else{
    "Humm that didn't work so well"
}
