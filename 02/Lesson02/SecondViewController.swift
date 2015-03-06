//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var NumberEntered: UITextField!
    
    @IBOutlet weak var Label: UILabel!

    var index: Int = 0
    
    var result = 0
    
    var previousNumber = [Int: Int] ()
    
    func numberAdded(NumberEntered: UITextField) {
    
        var NewNumber = NumberEntered.text.toInt()!
        
        if index == 0 {
            previousNumber[index] = NewNumber
            result = previousNumber[index]!
            println("\(index) : \(previousNumber[index])")
            index = index + 1
            
        } else {
        
            previousNumber[index] = NewNumber
            result = previousNumber[index]! + result
            println("\(index) : \(previousNumber[index])")
            index = index + 1
        }
        
        Label.text = "\(result)"
    }
    
    @IBAction func AdditionResult (sender: AnyObject) {
        numberAdded(NumberEntered)
        
    }
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}

