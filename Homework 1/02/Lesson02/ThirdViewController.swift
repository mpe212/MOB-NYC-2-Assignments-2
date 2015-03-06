//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var Label: UILabel!
  
    @IBOutlet weak var NumberEntered: UITextField!
    
    func isEvenOrOdd(NumberEntered: UITextField) {
        
        var number = NumberEntered.text.toInt()!
        
        println(number)
        
       if number % 2 == 0 {
            Label.text = "Is Even"
        
        } else {
            Label.text = "Is Odd"
        
        }
    }

    @IBAction func Calculated(sender: AnyObject) {
        
        isEvenOrOdd(NumberEntered)
    }
    
    

    /*    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

    */
}
