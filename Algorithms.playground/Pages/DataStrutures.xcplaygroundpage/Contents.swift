//: [Previous](@previous)

import Foundation
//: [Next](@next)
import UIKit

var str = "Hello, playground"
//Data Structures
//STACK
protocol Container {
    associatedtype itemType
    var count: Int { get }
    var items :[itemType] {get}
    
    subscript(i: Int) -> itemType { get }
    func printItems()
    
}

//protocol extention
extension Container {
    
    func printItems() {
        print(self.items)
    }
    
    subscript(i: Int) -> itemType {
        return items[i]
    }
    
    var count: Int  {
        return items.count
    }
    
    var isEmpty: Bool {
        return items.count == 0
    }
}

// Stack
struct Stack<T>: Container  {
    internal var items = [T]()
    
    mutating func push(_ item: T) {
        self.items.append(item)
        printItems()
    }
    mutating func pop() {
        if isEmpty { return  }
        //guard items.count >= 1  else { return }
        self.items.removeLast()
        printItems()
    }
    
}
print("=====Stack====")
var stack = Stack<Int>()
stack.push(10)
stack.push(10)
stack.push(10)
stack.push(10)
stack.pop()
stack.push(15)
stack.printItems()

//Queue
struct Queue<T>: Container  {
    internal var items :[T] = []
    mutating func enQueue(_ newitem: T ) {
        items.append(newitem)
    }
    mutating func dequeue () {
        guard items.count >= 1 else {
            return
        }
        items.removeFirst()
    }
    
}

print("=====Queue====")

var q = Queue<Int>()
q.enQueue(10)
q.enQueue(11)
q.enQueue(12)
q.enQueue(13)
q.dequeue()
q.enQueue(15)
q.printItems()

print("=====LinkedList====")

class Node<T:Equatable> {
    var value:T
    var next : Node?
    weak var previous: Node?
    
    init(_ value:T) {
        self.value = value
    }
}

class LinkedList<T:Equatable> {
    fileprivate var head: Node<T>?
    private var tail:Node<T>?
    public var isEmpty:Bool {
        return head == nil
    }
    public var first: Node<T>?{
        return head
    }
    public var last:Node<T>? {
        return tail
    }
    
    func insert(_ value: T) {
        let newNode = Node(value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    func remove(node: Node<T>)->T {
        let prev = node.previous
        let next = node.next
        if let prev  = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        if next == nil {
            tail = prev
        }
        node.previous = nil
        node.next = nil
        return node.value
    }
    
    func printItems() {
        var node = head
        while node != nil {
            print(node!.value)
            node = node!.next
        }
    }
    
    func nodeAt(index:Int) -> Node<T>? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 {
                    return node
                }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
}
var myList = LinkedList<Int>()
myList.insert(10)
myList.insert(20)
myList.insert(15)
myList.insert(19)
myList.printItems()



//Linked list
/*
 class Node<T: Equatable> {
 var next: Node?
 var data: T?
 }
 
 class LinkedList<T:Equatable> {
 var head = Node<T>()
 func insert(_ value: T) {
 if head.data == nil {
 head.data = value
 } else {
 var lastnode = self.head
 while lastnode != nil {
 lastnode = lastnode.next!
 }
 let newNode = Node<T>()
 newNode.data = value
 lastnode.next = newNode
 }
 }
 func remove(_ value:T){
 if self.head.data == value {
 self.head = self.head.next!
 }
 if self.head.data != nil {
 var node = self.head
 var previousNode = Node<T>()
 while node.data != nil && node.next != nil {
 previousNode = node
 node = node.next!
 }
 
 if node.data == value {
 previousNode.next = node.next
 } else {
 previousNode.next = nil
 }
 }
 
 }
 func printItems() {
 var currentNode:Node! = self.head
 while currentNode != nil && currentNode.data != nil {
 print(currentNode.data!)
 currentNode = currentNode.next
 }
 
 }
 
 }
 
 var myList = LinkedList<Int>()
 myList.insert(10)
 myList.insert(20)
 myList.insert(15)
 myList.insert(19)
 myList.printItems()
 myList.remove(20)
 myList.insert(14)
 myList.printItems()
 */
