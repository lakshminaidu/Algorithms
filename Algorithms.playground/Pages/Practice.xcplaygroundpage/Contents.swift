//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
let data:[Any?] = ["Bii",nil, 69,"cus"]
//for dataun in data where !(dataun is Hashable){
//    print(dataun)//nil
//}
protocol test {
    mutating func test()
}


func foo(_ function:(Int)->Int)->Int {
    return function(function(10))
}

func bar<T:BinaryInteger> (_ number:T)->T {
    return number * 3
}
print(foo(bar))//45

let rightActions = [1,2,3,4,5]
let lefttActions = [6,7,8,9,10]
var ac = [rightActions.first, lefttActions.first].compactMap({$0})+rightActions.dropFirst()+lefttActions.dropFirst()
print(ac[9])//10

func findNumber(arr: [Int], k: Int) -> String {
    if arr.isEmpty {
        return "NO"
    }
    if arr.filter({$0 == k}).count >= 1 {
        return "YES"
    } else {
        return "NO"
    }
    
}
findNumber(arr: [1,3,4], k: 4)
func oddNumbers(l: Int, r: Int) -> [Int] {
    var odd = [Int]()
    if r >= l {
        for i in l...r where i%2 == 1  {
            odd.append(i)
        }
    }
    return odd
    
}
oddNumbers(l: 3, r: 9)



func findsmallestPalindrome(str:String) -> Int {
    if str.isEmpty {
        return 0
    }
    
    return 0
}
