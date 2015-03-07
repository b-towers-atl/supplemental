// Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Rob"

for char in newString {
    
    println(char)
    
}

var newTypeString = NSString(string: newString)

newTypeString.substringToIndex(5)   // gives us first 5 characters

newTypeString.substringFromIndex(6) // not including index 6

// location is where it starts, length is how many characters
newTypeString.substringWithRange(NSRange(location: 3, length: 5))

if newTypeString.containsString("Rob") {
    
    // Rob is there
}

// split up a string into a series of words
newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString

newTypeString.lowercaseString

// lower case is great for email strings because they are not case sensitive