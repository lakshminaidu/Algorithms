//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
import Foundation


var str = "Hello, playground"
let atIndex = str[str.startIndex ]//str.startIndex
let sorted = str.sorted()
let sa = str.sorted{$0 > $1}
let idx = Array(str)[10]
for ch in str {
    print(ch)
}
var s = "Hello"
for  i in 0..<2 {
    s += "\n \(i).Hello"
}
print(s)
let words = str.split(separator: " ")
let arrayString = Array(str)
let word = arrayString[0...10]
let substring = str[str.startIndex...str.index(str.startIndex, offsetBy: 5)]


func find(_ substring:String,  in:String) -> Bool {
    return str.range(of: substring) != nil
}
func strSubstring(from index:Int, to:Int) -> String {
    
    let start = index > 0 ? index : 0
    let toIndex = to < str.count ? to - start : str.count - start - 1  //min(to - start, str.count)
    let startIndex = str.index(str.startIndex, offsetBy: start)
    let endIndex = str.index(startIndex, offsetBy: toIndex)
    return String(str[startIndex...endIndex])
}

let substringWithRange = strSubstring(from: 5, to: 10)


let isconatins = find("llo",in:str)
let notcontains = find("asas", in:str)
let s1 = "abcd"
var s2 = "abcd"
s2 = "123"
s2 = "1234"

if s1 == s2 {
    print( "equal")
} else if s1 < s2 {
    print("s1 is lessthan s2")
} else if s1 > s2 {
    print("s1 is greaterthan s2")
}

//Arrays
let odds = [1,3,5,7,9]
let even = [2,4,6,8]
let total = (odds + even).sorted()
let first = odds.first
let last = odds.last
let arrayIndex = odds[1]
let dropAt = [1,3,4,5,6] + odds.dropLast(10)
let max = [1,6,3,7,9].max()
let min = [9,-100,0,1,6,3,7,9].min()
let reverse = odds.reversed()
let sortedArray = [9,-100,0,1,6,3,7,9].sorted()

let sortedArray2 = [-1,-10,0,1,6,3,7,9].sorted {$0 < $1}
print(sortedArray2)


let sumOfarray = odds.reduce(0) {$0+$1}


let samplestr = "dsfcvbfsdlksafsddf"
for item in samplestr {
    let occurrenciesOfA = str.filter { $0 == item }.count
    print("occurance ",item,occurrenciesOfA)
}

var reversedStr = ""
for items1 in str{
    reversedStr = "\(items1)" + reversedStr
}
print ("reversed str ", reversedStr)

func printStairCase(input: Int){
    var hash = "#"
    for i in 0..<input {
        let spaces = String(repeating: " ", count: input-i-1)
        print ( spaces + hash)
        hash += "#"
    }
}

printStairCase(input: 10)
