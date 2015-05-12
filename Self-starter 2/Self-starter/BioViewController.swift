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
    
    let storage = NSUserDefaults.standardUserDefaults()
    var result: Int = 0

    @IBAction func showAlert() {
        
        var alert = UIAlertController(title: "Forgot Something?", message: "Please enter your information!", preferredStyle: .Alert)
        
        let cancel = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Cancel) { (action) -> Void in
        }
        
        alert.addAction(cancel)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
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
    
    @IBAction func doneClicked(sender: AnyObject) {
        
        if (self.feet.text == "" || self.inches.text == "" || self.lbs.text == "" || self.nameField.text == "") {
            showAlert()
        } else {
            result = bmiCalc()
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toWorkout" {
            storage.setValue(nameField.text, forKey: "nameVal")
            storage.setValue(result, forKey: "bmiVal")
            storage.setValue(feet.text, forKey: "ftVal")
            storage.setValue(inches.text, forKey: "InchVal")
            storage.setValue(lbs.text, forKey: "lbsVal")
            
            var destinationVC = segue.destinationViewController as! EntryViewController
            
            if (feet.text != "" && inches.text != "" && lbs.text != "" && nameField.text != "") {
                
            destinationVC.passedInName = nameField.text
            destinationVC.passedInBmi = result
            destinationVC.passedInFeet = feet.text.toInt()!
            destinationVC.passedInInches = inches.text.toInt()!
            destinationVC.passedInPounds = lbs.text.toInt()!
            } else {
                showAlert()
            }
        }

    }
}
