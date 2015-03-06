//
//  FibonacciAdder.swift
//  Lesson02
//
//  Created by Marcia Elyseu on 3/5/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {
 
    func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) {
        
        var index = indexOfFibonacciNumber
        var fibonacciIndex[Int: Int] ()
        
        if index == 1 {
             fibonacciIndex[0] = "0"
            //label.text = "0"
        } else if index == 2 {
            fibonacciIndex[1] = "1"
        } else {
            var i = 2
            fibonacciIndex[0] = "0"
            fibonacciIndex[1] = "1"
        
            while i <= index {
            fibonacciIndex[i] = fibonacciIndex[i-1] + fibonacciIndex[i-2]
            i++
            }
        
        }
    }
}