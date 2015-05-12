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
    @IBOutlet weak var feet: UITextField!
    @IBOutlet weak var inches: UITextField!
    @IBOutlet weak var lbs: UITextField!
    
    var result: Int = 0
    
    @IBAction func doneClicked(sender: AnyObject) {
        result =  bmiCalc()
    }
    
    let storage = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        if let name = storage.objectForKey("nameVal") as? String{
            nameField.text = name
        }
        
        if let name = storage.objectForKey("ftVal") as? String{
            feet.text = name
        }
        
        if let name = storage.objectForKey("InchVal") as? String{
            inches.text = name
        }
        
        if let name = storage.objectForKey("lbsVal") as? String{
            lbs.text = name
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toWorkout" {
            storage.setValue(nameField.text, forKey: "nameVal")
            storage.setValue(result, forKey: "bmiVal")
            storage.setValue(feet.text, forKey: "ftVal")
            storage.setValue(inches.text, forKey: "InchVal")
            storage.setValue(lbs.text, forKey: "lbsVal")
            
            var destinationVC = segue.destinationViewController as! EntryViewController
            destinationVC.passedInName = nameField.text
            destinationVC.passedInBmi = result
            destinationVC.passedInFeet = feet.text.toInt()!
            destinationVC.passedInInches = inches.text.toInt()!
            destinationVC.passedInPounds = lbs.text.toInt()!
        }
    }
    
    func bmiCalc() -> Int {
        let ft = feet.text.toInt()
        let inch = inches.text.toInt()
        let weight = lbs.text.toInt()
        
        let height = (ft! * 12) + inch!
        
        let bmi: Int = (weight! * 703)/(height*height)
        
        return bmi
    }
    
}
