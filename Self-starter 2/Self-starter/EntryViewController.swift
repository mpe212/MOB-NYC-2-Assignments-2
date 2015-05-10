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
    

  /*  @IBAction func generateWorkout(sender: AnyObject) {
        motionEnded(<#motion: UIEventSubtype#>, withEvent: <#UIEvent#>)
    }*/
    
    var passedInName = "Unknown"
    var passedInBmi = 0

/*    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == .MotionShake {
           
        }
    }*/
    
    override func viewDidLoad() {
        messageLabel.text = "hello \(passedInName)!"
        bmiLabel.text = "this is your BMI: \(passedInBmi)!"
        
        switch passedInBmi {
        
        case 0...19:
        
            self.infoLabel.text = "you are underweight!"
       
        case 19...23:
        
            self.infoLabel.text = "you are at the perfect weight!"
            
        case 23...29:
        
            self.infoLabel.text = "you are a little over your ideal weight!"
            
        case 29...1000:
        
            self.infoLabel.text = "you need some help getting back in shape!"
        
        default:
            self.infoLabel.text = "Sorry... unable to compute result!"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetail" {
            var destinationVC = segue.destinationViewController as! DetailViewController
             //   destinationVC.passedInNewBmi = passedInBmi
        }
    }
}
