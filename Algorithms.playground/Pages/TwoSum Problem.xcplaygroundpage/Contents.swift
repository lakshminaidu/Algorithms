//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//two sum problem
func twoSumProblem(array:[Int], sum :Int)->Bool {
    
    guard array.count > 1 else {
        return false
    }
    var low = 0
    var high = array.count - 1
    while low < high {
        let sumof = array [low] + array[high]
        if sumof == sum {
            print ("sum of \(array [low]) + \(array[high]) = \(sum)")
            return true
        } else if sumof < sum {
            low += 1
        } else if sumof > sum {
            high -= 1
        }
    }
    print ("not found sum")
    
    return false
}
twoSumProblem(array: [4, 4, 8, 10, 34, 67, 78], sum: 44)//
twoSumProblem(array: [3, 7, 10, 15], sum: 17)//[4, 4, 8, 10, 34, 67, 78]
twoSumProblem(array: [2, 3, 4, 4, 7, 8, 9, 10, 12, 14, 21, 22, 100], sum: 33)//let a =
//if let (i, j) = twoSumProblem(a, k: 33)

/*Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.
 
 For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.
 */
func findMissingNo(array:[Int])-> Int {
    guard array.count > 1 else {
        return 0
    }
    var arr = array
    // to store current array element
    var val:Int
    
    // to store next array element in
    // current traversal
    var nextval:Int
    for i in 0..<array.count {
        if arr[i] <= 0 || arr[i] > array.count {
            continue;
            
        }
        val = arr[i]
        while arr[val - 1] != val {
            nextval = arr[val - 1];
            arr[val - 1] = val;
            val = nextval;
            if val <= 0 || val > arr.count {
                break;
                
            }
        }
    }
    // find first array index which is
    // not marked which is also the
    // smallest positive missing
    // number.
    for  i  in 0..<arr.count {
        if arr[i] != i + 1 {
            return i + 1
        }
    }
    return arr.count+1
}
findMissingNo(array:  [2, 3, 7, 6, 8, -1, -10, 15])
findMissingNo(array:  [3, 4, -1, 1] )//should give 2
findMissingNo(array:  [1, 2, 0] )//should give 3


///findNumber
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
//oddNumbers between left and right
func oddNumbers(l: Int, r: Int) -> [Int] {
    var odd = [Int]()
    if r >= l {
        for i in l...r where i%2 == 1  {
            odd.append(i)
        }
    }
    return odd
    
}
oddNumbers(l: 3, r: 9)//between left and right

//forming longestNumer
func longestNumer(array:[Int])->Int {
    guard array.count > 1 else {
        return 0
    }
    
    let sorted = array.sorted { (lhs, rhs) -> Bool in
        let string = String(lhs) + String(rhs)
        let reversed = String(rhs) + String(lhs)
        return string > reversed
    }
    return Int(sorted.map({String($0)}).reduce("", +))!
    
}
longestNumer(array: [4,5,6,8,90,10,9])
longestNumer(array: [9,1,95,17,5])
longestNumer(array: [10,68,75,21,12])


//Matrix diagnoal difference

func diagnoalDiffrence(array:[[Int]]) -> Int {
    var leftsum = 0
    var rightsum = 0
    
    for i in 0..<array.count {
        let subArray = array[i]
        for j in 0..<subArray.count {
            if i==j {
                leftsum += array[i][j]
            }
            if j == array.count - i - 1 {
                rightsum += array[i][j]
            }
        }
    }
    
    
    return rightsum > leftsum ? rightsum - leftsum : leftsum - rightsum
    
}

diagnoalDiffrence(array: [[10,11],[2,4]]) //(10+ 4) - (11+2)












