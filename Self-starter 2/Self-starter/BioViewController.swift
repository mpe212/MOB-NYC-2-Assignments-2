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
            println("has value")
            nameField.text = name
        } else {
            println("empty")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toWorkout" {
            storage.setValue(nameField.text, forKey: "nameVal")
            storage.setValue(result, forKey: "bmiVal")
            
            var destinationVC = segue.destinationViewController as! EntryViewController
            destinationVC.passedInName = nameField.text
            destinationVC.passedInBmi = result
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
