// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Swift Book: Ch 0 Quick Tour

// simple values
var myVariable = 42
myVariable = 50
let myConstant = 42


// you don't have to explicity state what it is, the compiler can infer its type
// the compiler infers myVariable is an integer because its initial value is an integer

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70



// experiment challenge: create a constant with an explicit type of Float and a vlaue of 4
let experimentChallenge: Float = 4



// values are never implicity converted to another type
// if you need to convert a value to a different type, explicitly make an instance of the desired type

let label = "The width is"
let width = 94
let widthLabel = label + String(width)



// experiment challenge: try removing the conversion to String from the last line. What error do you get?
//let errorLabel = label + width
// cannot invoke + with an argument list of type (String,Int)
// + is a function that takes two arguments



// using \(value) inside strings
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."



// experiment challenge: Use \() to include a floating-point calculation in a string and to include someone's name in a greeting
var number1: Double = 5
var number2 = 8.68
let solutionString = "The result of 5 multiplied by 8.68 is \(number1 * number2)"

let myDadsName = "Donald"
let greeting = "Hello \(myDadsName)"



// arrays and dictionaries
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
shoppingList

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"
occupations


// to create an empty array or dictionary, use the initalizer syntax
var emptyArray = [String]()
var emptyDictionary = [String: AnyObject]()

emptyArray.append(myDadsName)
emptyArray.append("Bobby")

emptyDictionary.updateValue("Apple", forKey: "fruit")
emptyDictionary.updateValue(17.32, forKey: "number")
emptyDictionary.updateValue("Blade of the North", forKey: "sword")
emptyDictionary



// if type information can be inferred, you can write an empty array as [] and empty dict as [:]
// for example, when you set a new value for a variable or pass an argument to a function
shoppingList = []
occupations = [:]



// control flow
// if and switch, for, for in, while, do while
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore



// optionals
// you can use if and let together to work with values that might be missing
// an optional value contains either a value or nil to indicate that the value is missing
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed" // nil
var newGreeting = "Hello!"

if let name = optionalName {
    
    newGreeting = "Hello, \(name)"
    
} else {
    
    newGreeting = "Hello stranger"
    
}



// switches
// switches support any kind of data and a wide variety of comparison operations, they aren't limited to integers and tests for equality
// after executing the code inside the switch case that matches, the program exits from the switch statement
// execution doesn't continue to the next case (no need to break)
let vegetable = "red pepper" // "celery"

switch vegetable {
    
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
    
}
// experiment challenge: try removing the default case. What error do you get? A: must have an exhaustive, include default



// for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair
// dictionaries are an unordered collection, so their keys and values are iterated over in an abitrary order
let interestingNumbers = [
    
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]

]

var largest: Int = 0
for (kind, numbers) in interestingNumbers {
    
    for number in numbers {
        
        if number > largest {
            
            largest = number
            
        }
        
    }
    
}
largest



// experiment challenge: add another variable to keep track of which kind of number was the largest, as well as what that largest number was
var largestNumber: Int = 0
var largestKind: String = ""
for (kind, numbers) in interestingNumbers {
    
    for number in numbers {
        
        if number > largestNumber {
            
            largestNumber = number
            largestKind = kind
            
        }
        
    }
    
}
largestNumber
largestKind



// while loops
// use while to repeat a block of code until a condition changes
// do-while runs the code at least once
var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m



// index in a loop by either (both do the same)
// 1. ..< to make a range of indexes
// 2. writing explicit initalization, condition, and increment
var firstForLoop = 0

for i in 0..<4 {
    
    firstForLoop += i
    
}
firstForLoop


var secondForLoop = 0

for var i = 0; i < 4; i++ {
    
    secondForLoop += i
    
}
secondForLoop





























