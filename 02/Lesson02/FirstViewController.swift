//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {


    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var NameEntered: UITextField!
    
    @IBOutlet weak var AgeEntered: UITextField!

    @IBOutlet weak var ActivityPermitted: UILabel!
    
    
    func sayHellowWorld() {                 //TODO #1
        let LabelName = "Hello World!"
        Label.text = LabelName
    }
    
   func sayNameAndAge(){                    //TODO #2
        var personName = NameEntered.text
        var personAge = AgeEntered.text
        let LabelName = "Hello \(personName) you are \(personAge) years old!"
        Label.text = LabelName
    }

    func sayWhatYouCanDo(AgeEntered: UITextField) { //TODO #3
        
        var personAge = AgeEntered.text.toInt()!
        
        switch personAge {
        
        case 0...15:
            ActivityPermitted.text = "You're too young!"
        case 16...17:
            ActivityPermitted.text = "You can drive"
        case 18...20:
            ActivityPermitted.text = "You can vote"
        default:
            ActivityPermitted.text = "You can drink"
        }
        
    }
    
    func sayWhatYouCanDoToo(AgeEntered: UITextField) {  //TODO #4
            
        var personAge = AgeEntered.text.toInt()!
        
        if personAge >= 16 && personAge <= 18 {
            ActivityPermitted.text = "You can drive"
            
        } else if personAge >= 19 && personAge <= 20 {
                ActivityPermitted.text = "You can drive and vote"
            
        } else if personAge > 20 {
                ActivityPermitted.text = "You can drive, vote and drink, but not at the same time!"
        } else {
             ActivityPermitted.text = "You are too young to do anything!"
        }
        
    }
        
    @IBAction func ButtonClicked(sender: AnyObject) {
       if NameEntered.text == "" && AgeEntered.text == "" {
        
            sayHellowWorld() //TODO #1 - this is only called if the person does not type anything in the Name and Age textfields
        
        } else {
            
            sayNameAndAge() //TODO #2 below
        
        //Note that either TODO #3 or TODO #4 have to be commented out, so that each function is test one at a time:
        
            sayWhatYouCanDo(AgeEntered) //TODO #3 below.
        
            sayWhatYouCanDoToo(AgeEntered) //TODO #4 below
        
        }
    }
}

/*
TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
