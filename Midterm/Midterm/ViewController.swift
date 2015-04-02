//
//  ViewController.swift
//  Midterm
//
//  Created by Marcia Elyseu on 3/26/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entry: UITextField!

    var numberArray = [Float]() //create array to store numbers
    var firstNumber = Float()
    var secondNumber = Float()
    //var operationArray = [Float]()
    var numberBeingEntered: Bool?
    var operation = ""
    //var i = 0
    //var j = 0
    
    @IBAction func numberEntered(sender: AnyObject) {
        var button = sender as UIButton
        var number = button.titleLabel?.text
        
        if numberBeingEntered == true {
            entry.text = entry.text + number!
            numberArray.append((entry.text as NSString).floatValue)
        } else {
            entry.text = number
            numberArray.append((entry.text as NSString).floatValue)
            numberBeingEntered = true
        }
        
    }
    
    @IBAction func operationEntered(sender: AnyObject) {
        numberBeingEntered = false
        firstNumber = (entry.text as NSString).floatValue
        var button2 = sender as UIButton
        operation = button2.titleLabel!.text!
      //  operationArray[j] = operation
        //j++
       }

    
    @IBAction func equalPressed(sender: AnyObject) {
        //var operation = operationArray[j]
        var result: Float
        secondNumber = (entry.text as NSString).floatValue
        
        switch operation {
            case "+":
                result = firstNumber + secondNumber
            case "-":
                result = firstNumber - secondNumber
            case "x":
                result = firstNumber * secondNumber
            case "/":
                result = firstNumber / secondNumber
            default:
                result = 0
        }
            entry.text = "\(result)"
    }
 
    @IBAction func percentCalc(sender: AnyObject) {
       var percent = ((entry.text as NSString).floatValue)/100
        entry.text = "\(percent)"
    }
    
    @IBAction func signChange(sender: AnyObject) {
        var change = -((entry.text as NSString).floatValue)
        entry.text = "\(change)"
    }
    
    @IBAction func clearAll(sender: AnyObject) {
        entry.text = nil
        numberArray = []
    }
}

/*
@IBAction func clearAll(sender: AnyObject) {

}*/

/*func addNumber() {
array[1] =
var result = array[0] + array[1]
println(result)
}
*/
