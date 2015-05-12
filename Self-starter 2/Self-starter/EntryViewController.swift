//
//  EntryViewController.swift
//  Self-starter
//
//  Created by Marcia Elyseu on 5/7/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var workoutLabel: UILabel!
    
    var passedInName = "Unknown"
    var passedInBmi = 0
    var passedInFeet = 0
    var passedInInches = 0
    var passedInPounds = 0

    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        messageLabel.text = "Hello \(passedInName)!"
        
        bmiLabel.text = "Your BMI is: \(passedInBmi)!"
        
        switch passedInBmi {
        
        case 0...19:
        
            self.infoLabel.text = "You are underweight!"
            self.workoutLabel.textColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1)
            self.workoutLabel.text = "Start with BLUE exercises"
        
        case 19...23:
        
            self.infoLabel.text = "You are at the perfect weight!"
            self.workoutLabel.textColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1)
             self.workoutLabel.text = "Try BLUE, GREEN and RED exercises!"
            
        case 23...29:
        
            self.infoLabel.text = "You are a little over your ideal weight!"
            self.workoutLabel.textColor = UIColor(red: 26/255, green: 188/255, blue: 156/255, alpha: 1)
            self.workoutLabel.text = "Try BLUE and GREEN exercises!"
            
        case 29...1000:
    
            self.infoLabel.text = "You need help getting back in shape!"
            self.workoutLabel.textColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1)
            self.workoutLabel.text = "Start with BLUE exercises"

        default:
            self.infoLabel.text = "Sorry... unable to compute result!"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetail" {
            var destinationVC = segue.destinationViewController as! DetailViewController
        }
    }
    
   override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
       if motion == .MotionShake {
           self.performSegueWithIdentifier("toWorkout", sender: self)
        }
    }
}
