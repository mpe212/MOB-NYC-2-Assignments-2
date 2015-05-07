//
//  BioViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 5/6/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class BioViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var feet: UITextField!
    @IBOutlet weak var inches: UITextField!
    @IBOutlet weak var lbs: UITextField!
    
    
    let nameValue = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateName()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateName", name:NSUserDefaultsDidChangeNotification, object: nil)
        
        nameValue.setValue(nameField.text, forKey: "name_preference")
        
        let name = nameValue.stringForKey("nameVal")
    }
    
    func updateName(){
        let name = nameValue.stringForKey("name_preference")
        
        nameField.text = name
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toWorkout" {
            var destinationVC = segue.destinationViewController as! EntryViewController
            destinationVC.passedInName = nameField.text
        }
    }
    
    func bmiCalc() {
        let ft = feet.text.toInt()
        let inch = inches.text.toInt()
        let weight = lbs.text.toInt()
        
        let height = (ft! * 12) + inch!
        
        let bmi = (weight! * 703)/(height*height)
        
    }
    
//    func levelCalc() {
//        
//        if bmi < 18.5" {
//        var result = "you are "
//    }
//                                        //underweight
//        case 2: 18.5 < bmi < 24.9      //normal weight
//        case 3: 25 < bmi < 29.9     //overweight
//        case 4: bmi > 29            //obese
//
//        }
//    }
    
    @IBAction func registeredAccount(sender: AnyObject) {
     
     //   nameVal = nameField.text
     //  NSUserDefaults.standardUserDefaults().setObject(nameValue, forKey: name_preference)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
