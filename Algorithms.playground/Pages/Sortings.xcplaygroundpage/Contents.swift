//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let unsortedNumbers = [67,4,8,10,4,78,34]
//Merge Sort
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

func mergeSort<T:Comparable>(_ array:[T])->[T] {
    
    guard array.count > 1 else {
        return array
    }
    
    let left = Array(array[0..<array.count/2])
    let right = Array(array[array.count/2..<array.count])
 
    return mergeArray(left: mergeSort(left), right: mergeSort(right))
}
let mergeSortArray = mergeSort(unsortedNumbers)
print("merge Sorted \(mergeSortArray)")

//MergeSort
func bubbleSort<T:Comparable>( array:[T]) -> [T]   {
    guard array.count > 1 else {
        return array
    }
    var array = array
    for i in 0..<array.count {
        for j in 0..<array.count - i - 1 {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
//                let temp = array[j+1]
//                array[j+1] = array[j]
//                array[j] = temp
            }
        }
    }
    return array
}
let bubbleSortArray = bubbleSort(array: ["ass","fgg","xyz","bdd"])
print("bubble Sorted \(bubbleSortArray)")



//insertion
func insertionSort<T:Comparable>( array:[T]) -> [T]  {
    guard array.count > 1 else {
        return array
    }
    var a = array
    for i in 1..<a.count {
        var y = i
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}
let insertionSortArray = insertionSort(array: ["ass","fgg","xyz","bdd"])
print("insersion Sorted \(insertionSortArray)")
let insertionSortArrayNumbers = insertionSort(array: unsortedNumbers)

//SelectionSort
func selectionSort<T:Comparable>(array:[T]) -> [T]   {
    guard array.count > 1 else { return array }  // 1
    
    var a = array                    // 2
    
    for i in 0 ..< a.count - 1 {     // 3
        
        var lowest = i
        for j in i + 1 ..< a.count {   // 4
            if a[j] < a[lowest] {
                lowest = j
            }
        }
        
        if i != lowest {               // 5
            a.swapAt(i, lowest)
        }
    }
    return a
    
}
selectionSort(array: unsortedNumbers)//[67,4,8,10,4,78,34]

//MARK: Seraching

//LinearSearch
func linearSearch<T:Comparable>( array:[T], element:T) -> Bool {
    for i in 0..<array.count {
        if element == array[i] {
            print ("linear search found element")
            return true
        }
    }
    print ("linear search not found element")
    return false
}
linearSearch(array: unsortedNumbers, element: 10)//[67,4,8,10,4,78,34]
// Binary search works on sorted array for sortedarray
func binarySearch<T:Comparable>( array:[T],key:T) ->Bool {
    guard array.count > 1 else {
        return false
    }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = array.count/2
    let midValue = array[midIndex]
    if key < array[minIndex] || key > array[maxIndex] {
        return false
    }
    if key < midValue {
        binarySearch(array: Array(array[minIndex...midIndex - 1]), key: key)
    }
    if key > midValue {
        binarySearch(array: Array(array[midIndex + 1...maxIndex]), key: key)

    }
    if key == midValue {
        return true
    }
    return false
}

binarySearch(array: mergeSortArray, key: 10)// onsortedArrya


///Binary Tree
var array = [1,5,15,55,65,75]
class Node<T:Comparable> {
    let value: T
    var leftChild: Node?
    var rightChild: Node?
    init(value:T) {
        self.value = value
    }
}


func binaryTree<T:Comparable>(_ array: [T], firstIndex: Int, lastIndex: Int) -> Node<T>? {
    
    if lastIndex < firstIndex {
        return nil
    }
    let middleIndex = (lastIndex - firstIndex) / 2 + firstIndex
    let node = Node(value: array[middleIndex])
    node.leftChild = binaryTree(array, firstIndex: firstIndex, lastIndex: middleIndex-1)
    node.rightChild = binaryTree(array, firstIndex: middleIndex +
        1, lastIndex: lastIndex)
    
    return node
}


let tree = binaryTree( [1,5,15,50,55,65,75], firstIndex: 0, lastIndex:  [1,5,15,50,55,65,75].count - 1)

print(tree?.value, tree?.leftChild?.value, tree?.rightChild?.value)








