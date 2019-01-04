//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
 FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
 let fileHandle = FileHandle(forWritingAtPath: stdout)!
 
 guard let abTemp = readLine() else { fatalError("Bad input") } // two ints
 let ab = "10 20".split(separator: " ").map{ String($0) }
 
 guard let a = Int(ab[0].trimmingCharacters(in: .whitespacesAndNewlines))
 else { fatalError("Bad input") }
 
 guard let b = Int(ab[1].trimmingCharacters(in: .whitespacesAndNewlines))
 else { fatalError("Bad input") }
 
 guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
 else { fatalError("Bad input") } // single int
 
 guard let xTemp = readLine() else { fatalError("Bad input") }
 let x: [Int] = xTemp.split(separator: " ").map {
 if let xItem = Int($0) {
 return xItem
 } else { fatalError("Bad input") }
 } // array of Ints
 guard x.count == n else { fatalError("Bad input") }
 
 guard let wTemp = readLine() else { fatalError("Bad input") }
 let w: [Int] = wTemp.split(separator: " ").map {
 if let wItem = Int($0) {
 return wItem
 } else { fatalError("Bad input") }
 }
 guard w.count == n else { fatalError("Bad input") }
 
 
 let result = weightedAndMean(x: x, w: w)
 
 fileHandle.write(String(result).data(using: .utf8)!)
 fileHandle.write("\n".data(using: .utf8)!)
 */
