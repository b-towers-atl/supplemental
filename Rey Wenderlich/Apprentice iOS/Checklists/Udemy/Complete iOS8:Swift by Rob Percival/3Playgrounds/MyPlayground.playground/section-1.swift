// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str = "goodbye"

var name:String = "Bobby"

name = "Robert"

var unknownString:String

var int = 4

3 * int

var a = 5

var b = a * 3

var c:Double = 5 / 2

c * 4

c * Double(int)



var longSentence = str + " " + name

var newString = "My son is " + String(int)

var newString2 = "My son is \(int)"



var a2 = 3.5

var b2 = 4

var c2 = 3.5 * 4
// var c2 = a2 * Double(b2)

var string = "\(a2) times \(b2) is \(c2)"



// arrays 

var arr = [1, 2, 3, 4, 5]

arr[4]

arr.append(6)

println(arr)

arr.removeAtIndex(2)

println(arr)

arr.removeLast()

println(arr)

arr.removeRange(1...2)


var newArr = [1, 2.3, "Tom"]

var emptyArr:[Int]

emptyArr = []

emptyArr.append(3)



// dictionaries

var dict = ["name": "Bobby", "age": 23, "gender": "male"]

println(dict["name"]!)

dict["hairColor"] = "brown"

dict

dict["age"] = "old"

dict["age"] = nil

var name2 = dict["name"]!

var myString = "My name is \(name2)"

var gender = "gender"

var myString2 = "My gender is \(dict[gender]!)"



var array = [2, 4, 6, 8]

array.removeAtIndex(0)

array.append(10)



var dictionary = ["name": "Robert", "age": 22]

var dictNameValue = dictionary["name"]

var dictAgeValue = dictionary["age"]!

var sentence = "My name is \(dictNameValue!) and my age is \(dictAgeValue)"

println(sentence)




// conditionals

var myName = "Bob"

var time = 15

if myName == "Bob" && time < 12 {
    
    println("Good morning " + myName)
    
} else if myName == "Bob" && time > 12 {
    
    println("Good afternoon " + myName)
    
} else {
    
    println("Who are you?")
    
}


if myName == "Bob" || time < 20 {
    
    println("One statement is true")
    
}


var remainder = 9 % 2

var remainder2 = 11 % 3

var remainder0 = 9 % 3


var x = 13

if x % 2 == 0 {
    
    println("\(x) is an even number")
    
} else {
    
    println("\(x) is an odd number")
    
}



// how to produce a random number

var randomNumber = arc4random_uniform(10)
// gives a random number between 0-9




// for loops

for var i = 2; i < 10; i = i + 3 {
    
    println(i)
    
}

for var i = 3; i < 8; i = i + 2 {
    
    println(i)
    
}

for var i = 30; i >= 0; i = i - 2 {
    
    println(i)
    
}

for var i = 1; i < 10; i++ {
    
    println(i)
    
}

for var i = 5; i <= 50; i = i + 5 {
    
    println(i)
    
}

for var i = 1; i <= 10; i++ {
    
    println(i * 5)
    
}

var array2 = [8, 5, 6, 14]

for x in array2 {
    
    println(x)
    
}

for (index, x) in enumerate(array2) {
    
    println(index)
    array2[index] = x + 1
    
}

println(array2)


// enumerating arrays and reassigning values
var array3 = [10, -4, 19, 2000]
var array4 = [10.3, -4, 19, 2000]

for (index, x) in enumerate(array3) {
    
    array3[index] = x / 2
    
}

for (index, value) in enumerate(array4) {
    
    array4[index] = array4[index] / 2
    
}

println(array3)
println(array4)





// while loops

var i = 0

while i < 5 {
    
    println(i)
    
    i++
}

var count = 2

while count <= 20 {
    
    println(count)
    
    count += 2
}

var count2 = 1

while count2 <= 10 {
    
    println(count2 * 2)
    
    count2++
}



var arrayAgain = [6, 2, 9, 1, 7, 8, 12]

var index = 0

while index < arrayAgain.count {
    
    println(arrayAgain[index])
    
    index++
}



var bArray = [9, 5, 4, 10, 20, 18]
var bIndex = 0

while bIndex < bArray.count {
    
    bArray[bIndex] -= 1
    
    bIndex++
}

println(bArray)




// is it prime? code

for var v = 1; v <= 100; v++ {
    
    if v == 1 {
        
        println("\(v) is not")
        
    } else if v <= 3 {
        
        println("\(v) is prime")
        
    } else if v % 2 == 0 || v % 3 == 0 {
        
        println("\(v) is not")
        
    } else if (v % 5 == 0 && v > 5) || v % 11 == 0 {
        
        println("\(v) is not")
        
    } else {
        
        println("\(v) is prime")
        
    }
    
}


var myNum = 5

var isPrime:Bool

if myNum == 1 {
    
    isPrime = false
    
} else if myNum <= 3 {
    
    isPrime = true
    
} else if myNum % 2 == 0 || myNum % 3 == 0 {
    
    isPrime = false
    
} else if myNum > 5 && myNum % 5 == 0 {
    
    isPrime = false
    
} else if myNum % 11 == 0 {
    
    isPrime = false
    
} else {
    
    isPrime = true
    
}



// rob's method to is it prime

var number = 47

var primeCheck = true

if number == 1 {
    
    primeCheck = false

}
    
if number != 2 && number != 1 {

    for var i = 2; i < number; i++ {
    
        if number % i == 0 {
        
            primeCheck = false
        
        }
    
    }
    
}

println(primeCheck)

















