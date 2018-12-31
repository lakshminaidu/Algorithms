//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//As discussed, tries organize data in a hierarchy. To see how they work, let’s build a Dictionary that contains the following words:
extension String {
    
    //compute the length
    var length: Int {
        return self.count
    }
    
    //returns characters up to a specified integer
    func substring(to: Int) -> String {
        
        //define the range
        let range = self.index(self.startIndex, offsetBy: to)
        return String(self[..<range])
    }
  
}

//basic trie data structure

public class TrieNode {
    
    var key: String?
    var children: Array<TrieNode>
    var isFinal: Bool
    var level: Int
    init() {
        self.children = Array<TrieNode>()
        self.isFinal = false
        self.level = 0
    }
    
    private var root = TrieNode()
    //builds a tree hierarchy of dictionary content
    func append(word keyword: String) {
        
        //trivial case
        guard keyword.length > 0 else {
            return
        }
        
        var current: TrieNode = root
        
        while keyword.length != current.level {
            
            var childToUse: TrieNode!
            let searchKey = keyword.substring(to: current.level + 1)
            
            
            //iterate through child nodes
            for child in current.children {
                
                if child.key == searchKey {
                    childToUse = child
                    break
                }
            }
            
            //new node
            if childToUse == nil {
                
                childToUse = TrieNode()
                childToUse.key = searchKey
                childToUse.level = current.level + 1
                current.children.append(childToUse)
            }
            current = childToUse
            
        } //end while
        
        
        //final end of word check
        if keyword.length == current.level {
            current.isFinal = true
            print("end of word reached!")
            return
        }
        
    } //end function
    
    
}


