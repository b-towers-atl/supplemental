import UIKit


// functions and closures
// call a function by following its name with a list of arguments in ()
// use -> to separate the parameter names and types from the function's return type
func greet(name: String, day: String) -> String {
    
    return "Hello \(name), today is \(day)."
    
}
greet("Bob", "Tuesday")
greet("Jo", "Friday")



// experiment challenge: remove the day parameter. add a paramater to include today's lunch special in the greeting
func greetings(name: String, todaysSpecial: String) -> String {
    
    return "Hey \(name), today's lunch special is \(todaysSpecial)."
    
}
greet("Jimmy", "Super Mega Pizza")



// use a tuple to make a compound value, for example, to return multiple values from a function
// elements of a tuple can be referred to either by name or by number
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum // sum
statistics.1 // max
statistics.2 // sum
statistics.0 // min



// functions can also take a variable number of arguments, collecting them into an array
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)



// experiment challenge: write a function that calculates the average of its arguments
func average(inputNumbers: Double...) -> Double {
    
    var average: Double = 0
    for number in inputNumbers {
        
        average += number
        
    }
    average /= Double(inputNumbers.count)
    return average
    
}
average(8.0, 7.0)
average(78.0, 84.5, 87.3, 100.00)



// functions can be nested
// nested functions have access to variables that were declared in the outer function
// you can use nested functions to organize the code in a function that is long or complex
func returnFifteen() -> Int {
    
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
    
}
returnFifteen()



// functions are a first-class type, meaning that a function can return a function as its value
func makeIncrementer() -> (Int -> Int) {
    
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
    
}
var increment = makeIncrementer()
increment(7)



// self challenge
func makeSquarer() -> (Float -> Float) {
    
    func square(inputNumber: Float) -> Float {
        return inputNumber * inputNumber
    }
    
    return square
}
var mySquareMachine = makeSquarer()
mySquareMachine(5)



// a function can take a function as one of its arguments
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
    
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)



// functions are actually a special case of closures: blocks of code that can be called later
// the code in a closure has access to variables and functions available in the scope where the closure was created, even if the closure is in a different scope when executed (ex: is a nested function)
// you can write a closure without a name by surrounding the code with braces ({ })
// use in to separate the arguments and return type from the body
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})



// experiment challenge: rewrite the closure to return zero for all odd numbers
numbers.map({
    (number: Int) -> Int in
    var result = 0
    if number % 2 == 0 {
        result = number
    }
    
    return result
})



// writing closures more conciesly
// when a closure's type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both
// single statement closures implicitly return the value of their only statement
let mappedNumbers = numbers.map({ number in 3 * number })
mappedNumbers



// you can refer to parameters by numbr instead of by name (especially useful in very short closures)
// a closure passed as the last argument to a function can appear immediately after the parentheses
let sortedNumbers = sorted(numbers) { $0 > $1 }
sortedNumbers
















