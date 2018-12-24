//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
 
 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
 */

func allProduts(array:[Int])->[Int] {
    
    var left = [Int]()
    var right = [Int]()
    var prodcuts = [Int]()
    
    
    var arr = array
    
    
    /* Left most element of left array is always 1 */
    left[0] = 1
    
    /* Rightmost most element of right array is always 1 */
    right.insert(1, at: array.count-1)
    
    /* Construct the left array */

    for i in 0..<array.count {
        left[i] = arr[i-1]*left[i-1];

    }
    
    /* Construct the right array */
    for j in arr.count-2...0 {
        right[j] = arr[j+1]*right[j+1];

    }
   
    for i in 0..<array.count {
        prodcuts[i] = left[i] * right[i];

    }
    return prodcuts
}

allProduts(array: [1, 2, 3, 4, 5])
