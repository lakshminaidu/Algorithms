//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class LLNode<T> {
    
    var key: T?
    var next: LLNode?
    var previous: LLNode?
}

public class LinkedList<T: Equatable> {
    
    //new instance
    private var head = LLNode<T>()
    private var counter:Int = 0
    func printAllKeys() {
        
        var current: LLNode? = head
        
        while current != nil {
            print("link item is: \(String(describing: current?.key!))")
            current = current?.next
        }
    }
    //add item
    func append(element key: T) {
        counter += 1

        guard head.key != nil else {
            head.key = key
            return
        }
        
        var current: LLNode? = head
        
        //position node
        while current != nil {
            
            if current?.next == nil {
                
                let childToUse = LLNode<T>()
                
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            }
                
            else {
                current = current?.next
            }
            
        } //end while
    }
    //remove at specific index
    func remove(at index: Int) {
        counter -= 1

        //check empty conditions
        if ((index < 0) || (index > (self.count - 1)) || (head.key == nil)) {
            print("link index does not exist..")
            return
        }
        var current: LLNode<T>? =  head
        var trailer: LLNode<T>?
        var listIndex: Int = 0
        
        
        //determine if the removal is at the head
        if index == 0 {
            current = current?.next
            head = current!
            return
        }
        
        
        //iterate through remaining items
        while current != nil {
            
            if listIndex == index {
                
                //redirect the trailer and next pointers
                trailer!.next = current?.next
                current = nil
                break
                
            }
            
            //update assignments
            trailer = current
            current = current?.next
            listIndex += 1
        }
    }
    //obtain link at a specific index
    func find(at index: Int) ->LLNode<T>? {
        
        //check empty conditions
        if ((index < 0) || (index > (self.count - 1)) || (head.key == nil)) {
            return nil
        }
            
        else  {
            var current: LLNode<T> = head
            var x: Int = 0
            //cycle through elements
            while (index != x) {
                current = current.next!
                x += 1
            }
            
            return current
        }
    }
    //the number of items - O(1)
    var count: Int {
        return counter
    }
    //empty list check
    func isEmpty() -> Bool {
        return counter == 0 || head.key == nil
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
            counter += 1
    }
    
    //find subscript shortcut
    subscript(index: Int) -> LLNode<T>? {
        get {
            return find(at: index)
        }
    }
} //end class

var list = LinkedList<Int>()
list.append(element: 10)
list.append(element: 1)
list.append(element: 2)
list.append(element: 4)
list.printAllKeys()



let newnode: LLNode<Int>? = list[2]
