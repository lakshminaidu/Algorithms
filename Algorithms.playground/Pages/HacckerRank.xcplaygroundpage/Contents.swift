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

func jumpingOnClouds(c: [Int]) -> Int {
    var count = 0
    var i = 0
    while i < c.count - 1 {
        if i+2 < c.count && c[i + 2] == 0 {
            i +=  2
            count += 1
        }
        else {
            i +=  1
            count += 1
            
        }
    }
    return count
}
jumpingOnClouds(c:[0,1,0,0,0,1,0])//3
jumpingOnClouds(c: [0 ,0 ,0 ,0 ,1, 0])//3
jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0])//4
jumpingOnClouds(c: [0, 0, 1, 0, 0])//2


func hurdleRace(k: Int, height: [Int]) -> Int {
    var race = 0
    for i in 0..<height.count {
        if height[i] > k {
            race = height[i] - k
            break
        }
    }
    
    return race
}

hurdleRace(k: 4, height: [1,6,3,5,2])//2
hurdleRace(k: 7, height: [2,5,4,5,2])

//gradingStudents
func gradingStudents(grades: [Int]) -> [Int] {
    var newgrades = [Int]()
    for i in 0..<grades.count {
        if grades[i] <= 37 {
            newgrades.append( grades[i])
            
        } else {
            
            if grades[i] % 5 == 3  {
                let newgrade = grades[i] + (5 - grades[i]%5)
                newgrades.append(newgrade)
                
            } else {
                newgrades.append( grades[i])
                
            }
        }
        
    }
    return newgrades
    
    /*
     * Write your code here.
     */
    
}
gradingStudents(grades: [73,67,38,33,22,40])

// Complete the circularArrayRotation function below.
func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    //let k = k+1
    let rotatedArray = Array(a[k...]) + Array(a[..<k])
    print(rotatedArray)
    
    var answers = [Int]()
    
    for i in 0..<queries.count {
        answers.append(rotatedArray[i])
    }
    return answers
    
}

circularArrayRotation(a: [1,2,3,4,5], k: 2, queries: [0,1,2])
circularArrayRotation(a: [3,4,5], k: 2, queries: [1,2])

func findDigits(n: Int) -> Int {
    let s = String(n)
    var count = 0
    for c in s {
        // print(c)
        let digt = Int(String(c))!
        //print(digt)
        
        if digt != 0 && n / digt != 0 {
            count += 1
        }
        
    }
    return count
    
}

findDigits(n: 111)
findDigits(n: 1012)
findDigits(n: 12)
findDigits(n: 106108048)
findDigits(n: 88)

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    
    let applecount = apples.map({$0 + a}).filter({$0 >= s && $0 <= t}).count
    print(applecount)
    let orangesecount = oranges.map({$0 + b}).filter({$0 >= s && $0 <= t}).count
    print(orangesecount)
    
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5, -6])//1 1
countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3, -2,-4])//1 2


func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    
    var x1 = x1
    var x2 = x2
    while v1 > v2 && x1 < x2  {
        x1 = x1 + v1
        x2 = x2 + v2
        if x1 == x2 {
            return "YES"
        }
        x1 += 1
        x2 += 1
        
    }
    return "NO"
}

func printStairCase(input: Int){
    var hash = "#"
    for i in 0..<input {
        let spaces = String(repeating: " ", count: input-i-1)
        print ( spaces + hash)
        hash += "#"
    }
}
printStairCase(input: 10)

//divisibleSumPairs

func divisibleSumPairs(_ array:[Int], div: Int) -> Int {
    var count = 0
    
    for i in 0..<array.count {
        // print(i)
        for j in i+1..<array.count {
            let sum = array[i] + array[j]
            if sum % div == 0 {
                print(array[i],array[j])
                count += 1
            }
        }
    }
    return count
}

divisibleSumPairs([1,2,3,4,5,6], div: 5)
divisibleSumPairs([1,3,2,6,1,2], div: 3)

// find the max value of each subarray of length k
func maxValues(array: [Int], length: Int) -> [Int] {
    var maxValues = [Int]()
    for i in 0...array.count-length  {
        let subArray = Array(array[i..<i+length])
        print(subArray)
        maxValues.append(subArray.max()!)
    }
    
    return maxValues
}

maxValues(array: [10,5,2,7,8,7], length: 3)
//Print the type number of the most common bird; if two or more types of birds are equally common, choose the type with the smallest ID number.

// Complete the migratoryBirds function below.
func migratoryBirds(arr: [Int]) -> Int {
    var typeCount = 0
    let set = Set(arr).sorted()
    var type = arr[0]
    for i in set {
        let count = arr.filter({$0 == i}).count
        if count > typeCount {
            typeCount = count
            type = i
        }
    }
    return type
    
}

migratoryBirds(arr: [1, 4 ,4 ,4, 5, 3])//4

migratoryBirds(arr: [1, 2 ,3 ,4, 5, 4,3,2,1,3,4])//3
migratoryBirds(arr: [1, 1 ,2 ,2, 3])//1

// Complete the dayOfProgrammer function below.
func dayOfProgrammer(year: Int) -> String {
    let month = 09
    var day = 13
    if year % 100 == 0  {
        if year / 400 == 4 {
            day -= 1
        }
    }
    else if year%4 == 0  {
        day -= 1
    }
    return "\(day).0\(month).\(year)"
    
}

dayOfProgrammer(year: 2017)
dayOfProgrammer(year: 2016)
dayOfProgrammer(year: 1800)
dayOfProgrammer(year: 2100)
dayOfProgrammer(year: 1700)
dayOfProgrammer(year: 1918)
