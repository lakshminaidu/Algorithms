//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func mergeArray<T:Comparable>(left: [T], right: [T]) -> [T] {
    var mergedArray: [T] = []
    var left = left
    var right = right
    while left.count > 0 && right.count > 0{
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        } else {
            mergedArray.append(right.removeFirst())
        }
    }
    return mergedArray + left + right
}

//[[10, 15, 30], [12, 15, 20], [17, 20, 32]], the result should be [10, 12, 15, 15, 17, 20, 20, 30, 32].
func sortCollections(array:[[Int]])->[Int] {
    
    if array.isEmpty {
        return []
    }
    if array.count == 1{
        return array[0]
    }
    var sortedArray = array[0]
    for i in 1..<array.count {
        sortedArray = mergeArray(left: sortedArray, right: array[i])
    }
    return sortedArray
}

sortCollections(array: [[10, 15, 30], [12, 15, 20], [17, 20, 32]])//should be [10, 12, 15, 15, 17, 20, 20, 30, 32])
sortCollections(array: [[], [], []])//test 1
sortCollections(array: [[1]])//test 2
sortCollections(array: [[1], [1, 3, 5], [1, 10, 20, 30, 40]])// test 3
sortCollections(array: [[], [1], [1,2]]) // test 4
