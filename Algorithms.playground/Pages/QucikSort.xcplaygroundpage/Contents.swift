//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 Swift's swap() doesn't like it if the items you're trying to swap refer to
 the same memory location. This little wrapper simply ignores such swaps.
 */
public func swap<T: Comparable>(_ a: inout [T], _ i: Int, _ j: Int) {
    if i != j {
        a.swapAt(i, j)
    }
}

func partition<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
    
    let pivot = a[high]    // pivot
    var i = low - 1  // Index of smaller element
    for j in 0...high {
        if a[j] <= pivot {
            print(i)
            i += 1
            swap(&a, i, j)
        }
    }
    swap(&a, i+1, high)

    return i + 1
}


func quickSort<T: Comparable>(_ array: inout [T], low: Int, high: Int) {
    
    if low < high {
        /* pi is partitioning index, arr[pi] is now
         at right place */
        let pi = partition(&array, low: low, high: high);

        quickSort(&array, low: low, high: pi - 1);  // Before pi
        quickSort(&array, low: pi + 1, high: high); // After pi
    }
}


var a = [10, 7, 8, 9, 1, 5]
quickSort(&a, low: 0, high: a.count - 1)
print(a)

//var list4 = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
//quickSort(&list4, low: 0, high: list4.count - 1)
