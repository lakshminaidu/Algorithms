//: [Previous](@previous)

import Foundation
//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: [Next](@next)
func interView(array:[Int])->[Int] {
    
    var sol = [Int]()
    for i in 0..<array.count {
        sol.append(findmax(array: Array(array[0..<i]), key: array[i]))
    }
    return sol
}

func findmax(array:[Int], key:Int) ->  Int{
    if array.count == 0 {
        return 0
    }
    return array.filter({$0 >=  key}).count
}

interView(array: [4,9,5,3,2,10,11])



//repeat the string till n lenth and find the  count of first lettr
func repeatedString(s: String, n: Int) -> Int {
    
    var repeatedString = s
    while repeatedString.count < n {
        for ch in s {
            if repeatedString.count == n {
                break
            }
            repeatedString += String(ch)
        }
    }
    return  repeatedString.filter ({String($0) == "a"}).count
}

repeatedString(s: "aba", n: 10)

func staircase(n: Int) -> Void {
    var hash = "#"
    for i in 0..<n {
        let spaces = String(repeating:" ", count: n - i - 1)
        print(spaces + hash)
        hash += "#"
    }
    
}
staircase(n: 10)

//MIn Max Sum
func miniMaxSum(arr: [Int]) -> Void {
    let arr = arr.sorted()
    var minsum:UInt64 = UInt64(arr[1])
    var maxsum:UInt64 = UInt64(arr[1])
    for i in 0..<arr.count {
        var new = arr
        new.remove(at: i)
        let sum:UInt64 = UInt64(new.reduce(0,+))
        
        if sum > maxsum {
            maxsum = sum
        } else {
            minsum = sum
        }
        
    }
    print ("\(minsum)" + " " + "\(maxsum)" )
    
}

miniMaxSum(arr: [140638725, 436257910, 953274816, 734065819, 362748590])

//birthdayCakeCandles
func birthdayCakeCandles(ar: [Int]) -> Int {
    let arr = ar.sorted()
    return  arr.filter({$0 == arr.last!}).count
}
birthdayCakeCandles(ar: [3,1,2,3])// heights of candles

//Time Conversion
func timeConversion(s: String) -> String {
    let df = DateFormatter()
    df.dateFormat = "hh:mm:ssa"
    let date = df.date(from: s)
    df.dateFormat = "HH:mm:ss"
    return df.string(from: date!)
    
}

// pickingNumbers if the adjecent diff <= 1
func pickingNumbers(a: [Int]) -> Int {
    // Write your code here
    var diffArray = [a[0]]
    for i in 0..<a.count-1 {
        if abs(a[i] - diffArray.last!) <= 1 {
            diffArray.append(a[i])
        }
    }
    print(diffArray)
    return diffArray.count
    // return a.filter ({$0 - $0+1 <= 1}).count
}



pickingNumbers(a: [1,2, 2, 3, 1, 2])
pickingNumbers(a: [4,6, 5, 3,3,1])
pickingNumbers(a: [1,1,2,2,4,4,5,5,5])


//find the max profit day from daily stock prices problem
func maxprofit(array:[Int])->Int {
    func profitFromDay(array:[Int],day:Int)->Int {
        var  diff = 0
        for i in 0..<array.count-1 {
            if array[i] - array[i+1] > diff {
                diff = array[i] - array[i+1]
            }
            
        }
        return diff
    }
    var max = array[0]
    for i in 1..<array.count {
        let value = profitFromDay(array: Array(array[i..<array.count]), day: i)
        if value > max {
            max = value
        }
    }
    return max
}
maxprofit(array: [10,40,150,60,50,200])


//Game Rank
func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
    var rank = [Int]()
    let uniqScores = Set(scores)
    for i in 0..<alice.count {
        let count = uniqScores.filter({$0 > alice[i]}).count
        rank.append(count)
    }
    return rank
}

climbingLeaderboard(scores: [100, 100 ,50, 40, 40 ,20, 10], alice: [5, 25, 50, 120])

// Complete the sockMerchant function below. find unpaired sockes count
func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    let dup  = Array(Set(ar))
    var count = 0
    for i in 0..<dup.count {
        let filterd = ar.filter({ $0 == dup[i] })
        print(filterd)
        if filterd.count % 2 == 0 {
            count += filterd.count / 2
        }
    }
    return  count
    
   
    
}
//let socks = [10, 20, 20, 10, 10, 30, 50, 10, 20]
//sockMerchant(n: socks.count, ar: socks)
let socks1 = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]
sockMerchant(n: socks1.count, ar: socks1)


